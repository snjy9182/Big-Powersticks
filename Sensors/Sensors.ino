#include <Wire.h>
#include "MMA7660.h"
MMA7660 accelemeter;
void setup()
{
  pinMode(A3, OUTPUT);
  accelemeter.init();  
  Serial.begin(9600);
}
void loop()
{
  int8_t x;
  int8_t y;
  int8_t z;
  float ax,ay,az;
  accelemeter.getXYZ(&x,&y,&z);
  accelemeter.getAcceleration(&ax,&ay,&az);
  float mag = sqrt(sq(ax) + sq(ay) + sq(az)) - 1; //adjust for 1g
  if (mag <= 0){
    mag = 0;
  }
  Serial.println(mag);
  delay(150);
  if (mag > 0.1){
    digitalWrite(A3, HIGH);  

    delay(150);

    digitalWrite(A3, LOW);
  }
}


