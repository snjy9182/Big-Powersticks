
#include <MMA7660.h>
#include <Wire.h>
#include "MMA7660.h"
MMA7660 accelemeter;

int n = 0;

void setup()
{
  accelemeter.init();

  Serial.begin(9600);

  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);

  digitalWrite(8, HIGH);
  digitalWrite(9, LOW);
  digitalWrite(10, LOW);

}

void loop()
{
  int8_t x;
  int8_t y;
  int8_t z;
  float ax,ay,az;
  
  accelemeter.getXYZ(&x,&y,&z);
  accelemeter.getAcceleration(&ax,&ay,&az);


  Serial.println("Sensor " + (n + 1));
  Serial.println("x: " + ax);
  Serial.println("y: " + ay);
  Serial.println("z: " + az);
 
  Serial.println("*************");



  digitalWrite(8, LOW);
  digitalWrite(9, LOW);
  digitalWrite(10, LOW);

  n = (n + 1) % 3;

  digitalWrite(((n + 8, HIGH);

  delay(200);
}




