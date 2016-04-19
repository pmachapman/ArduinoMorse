#include <ArduinoMorse.h>

ArduinoMorse morse(13); // LED on pin 13 will flash

void setup() {
  Serial.begin(9600);
}

void loop() {
  if (Serial.available() > 0) {
    char value = Serial.read();
    morse.processChar(value);
    Serial.println(value);
  }
  delay(1000);
}
