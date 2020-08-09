/*
 * Copyright [2020] [Silei Zhang]
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/*
 * Hummingbird IO processor.
 *
 * There are 3 interfaces from/to hummingbird.
 *   0. All interface requests are initialized from hummingbird, by
 *      asserting one of the 3 control pins, then read from the data
 *      interface. When the request completes, hummingbird
 *      de-asserts the control pin to indicate the end of communication.
 *   1. Push buttons are connected to arduino, hummingbird asserts ctrl1pin
 *      before polling status from push buttons.
 *   2. User input to arduino is buffered in a fifo, hummingbird asserts
 *      ctrl2pin before polling the next input character from user.
 *   3. Output to the terminal is done by asserting ctrl3pin from hummingbird,
 *      then the output is sent to data interface.
 */

/* input from hummingbird through a 74165 parallel to serial shift register */
const int dinpin     = 2;
const int dinldpin   = 3;
const int dinclkpin  = 4;
/* output to hummingbird through a 74164 serial to parallel shift register */
const int doutpin    = 5;
const int doutclkpin = 6;
/* select input from hummingbird */
const int ctrl1pin   = 7;
/* select output to hummingbird */
const int ctrl2pin   = 8;
/* select button status query output to hummingbird */
const int ctrl3pin   = 9;
/* connected to push buttons */
const int btnuppin   = 10;
const int btndownpin = 11;

void setup() {
  pinMode(dinpin, INPUT);
  pinMode(dinldpin, OUTPUT);
  pinMode(dinclkpin, OUTPUT);
  digitalWrite(dinldpin, HIGH);
  digitalWrite(dinclkpin, LOW);

  pinMode(doutpin, OUTPUT);
  pinMode(doutclkpin, OUTPUT);
  digitalWrite(doutclkpin, LOW);

  pinMode(ctrl1pin, INPUT);
  pinMode(ctrl2pin, INPUT);
  pinMode(ctrl3pin, INPUT);
  pinMode(btnuppin, INPUT);
  pinMode(btndownpin, INPUT);
  Serial.begin(57600);
  Serial.println("HUMMINGBIRD TERMINAL -");
  while (digitalRead(ctrl1pin) == HIGH);
  while (digitalRead(ctrl2pin) == HIGH);
  while (digitalRead(ctrl3pin) == HIGH);
  Serial.println("listening ...");
}

bool input;
bool output;
bool btnout;
int btnupstate, btndownstate;
int btnuptimes, btndowntimes;
const int btnthresh = 5;
const int fifolength = 64;
char fifo[fifolength];
int fifo_rd, fifo_wr;

void poll_user_io() {
  int ch;

  if (Serial.available() > 0 && fifo_wr - fifo_rd < fifolength) {
    ch = Serial.read();
    fifo[fifo_wr & (fifolength - 1)] = ch;
    fifo_wr ++;
  }
}

void poll_buttons() {
  int btns;

  // poll button status, active low
  int btn = digitalRead(btnuppin) == HIGH ? 0 : 1;
  if (btnupstate != btn) {
    btnuptimes ++;
    if (btnuptimes > btnthresh) {
      btnuptimes = 0;
      btnupstate = !btnupstate;
    }
  }
  btn = digitalRead(btndownpin) == HIGH ? 0 : 1;
  if (btndownstate != btn) {
    btndowntimes ++;
    if (btndowntimes > btnthresh) {
      btndowntimes = 0;
      btndownstate = !btndownstate;
    }
  }

  // detect button request from hummingbird
  int pin3 = digitalRead(ctrl3pin);
  if ((pin3 == LOW && !btnout) || (pin3 == HIGH && btnout)) {
    return;
  }
  if (pin3 == LOW) {
    btnout = false;

    return;
  }
  btns = (~(btndownstate |  (btnupstate << 1))) & 3;
  for (int i = 7; i >= 0; i --) {
    int d = ((btns >> i) & 1) ? HIGH : LOW;
    digitalWrite(doutpin, d);
    // toggle clock for each serial output
    digitalWrite(doutclkpin, HIGH);
    digitalWrite(doutclkpin, LOW);
  }
  btnout = true;
}

void process_output() {
  int r;

  // detect input request from hummingbird
  int pin2 = digitalRead(ctrl2pin);
  if ((pin2 == LOW && !output) || (pin2 == HIGH && output)) {
    return;
  }
  if (pin2 == LOW) {
    output = false;
    return;
  }
  if (fifo_wr == fifo_rd) {
    r = 0;
  } else {
    r = fifo[fifo_rd & 0x3f];
    fifo_rd ++;
  }
  for (int i = 7; i >= 0; i --) {
    digitalWrite(doutpin, ((r >> i) & 1) ? HIGH : LOW);
    digitalWrite(doutclkpin, HIGH);
    digitalWrite(doutclkpin, LOW);
  }
  output = true;
}

void process_input() {
  int r;
  int pin1 = digitalRead(ctrl1pin);

  // hummingbird output reqest
  if ((pin1 == LOW && !input) || (pin1 == HIGH && input)) {
    return;
  }
  if (pin1 == LOW) {
    input = false;
    return;
  }
  input = true;
  // toggle LD to lock in data
  digitalWrite(dinldpin, LOW);
  digitalWrite(dinldpin, HIGH);
  r = 0;
  for (int i = 7; i >= 0; i --) {
    if (digitalRead(dinpin) == HIGH) {
      r |= (1 << i);
    }
    if (i == 0)
      break;
    digitalWrite(dinclkpin, HIGH);
    digitalWrite(dinclkpin, LOW);
  }
  Serial.write(r);
}

void loop() {
  poll_user_io();
  poll_buttons();
  process_output();
  process_input();
}
