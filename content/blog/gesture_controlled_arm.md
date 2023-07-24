+++
title = "Project Pieyes"
date = 2023-06-01
[taxonomies]
writings=["Reports"]
+++

![Pieyes](/images/pieyes.gif)

## Introduction

The purpose of this report is to document the process of building a CV robotic arm prototype using Arduino. The arm is designed to be controlled with natural hand gestures removing the need to look at the buttons on a screen or a controller to control it. 

### Materials Used:

1. Arduino Uno 
2. 16 Channel Servo driver 
3. Buck Converter 
4. Jumper Cables 
5. 3D Printed MK2 Chassis
6. 4 Servos
6. A Portable Computer with Camera

### Software Used:

1. Arduino IDE V2
2. Python 3 

### Design:

The first step in building the CV controlled arm is to make a schematic of it. The arm is based on the MK2 Model, which is pretty easy to 3D-print and assemble. 4 servos are used for the base, the lower arm, the upper arm and the gripper. The servos are connected to the Servo Driver and the Servo Driver is connected to 5 volts DC power. The Arduino is used to control the Servo Driver to send PWM signals to servo.

The decisions for what signals to send for recognized gestures handled by a Python script which sends serial to Arduino via the USB. The Arduino receives the signal which is now converted to mechanical output.

### Construction:

The assembly of the base is a bit tricky with gears and servos to be attached to it, but the upper part is easily attached. The four servos are placed on the right place according to MK2 schematics and are connected to 16 Channel Servo Driver. (I connected 0,2,4 and 7 as base, lower arm, upper arm and gripper respectively on the Servo Driver.) While connecting the Servo Driver to Arduino; the VCC is connected to 5 volts and Grounds of Arduino and Servo Driver are connected. From Arduino the analogue 5 pin is connected to SCL and analogue 4 pin is connected to SDA respectively.(This connects the Servo Driver to the Arduino.) 

The servo diver is connected to 5 volts DC converted from 12 volts power supply using a buck converter. USB connected to the Arduino supplies power to Arduino as well as the Servo Driver but not the Servos connected to the Driver. The USB also doubles as a data transmission device to send serial input to the Arduino from the laptop running the python script.

### Programming

#### In Arduino:

```ino


#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

// called this way, it uses the default address 0x40
Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver(0x40);

#define SERVOMIN 100   // This is the 'minimum' pulse length count (out of 4096)
#define SERVOMAX 450   // This is the 'maximum' pulse length count (out of 4096)
#define SERVO_FREQ 50  // Analog servos run at ~50 Hz updates

// our servo # counter
uint8_t servonum = 0;
char prevSerial = '\0';
char data;

// Setting the default state of the arm.
int val1 = 312, val2 = 350, val3 = 174, val4 = 0;

void setup() {
  Serial.begin(9600);
  Serial.println("Running...");

  pwm.begin();
  pwm.setOscillatorFrequency(27000000);
  pwm.setPWMFreq(SERVO_FREQ);

  delay(10);
}

void loop() {

  // checking if serial is available or not and setting values to "data" as soon as the serial changes
  if (Serial.available() > 0) {
    data = Serial.read();

    if (data == 'W') {
      if (val4 < SERVOMAX) {
        Serial.print("Gripper IN");
        Serial.println(val4);
        pwm.setPWM(7, 0, val4);
        val4 += 4;
      }
    }

    if (data == 'A') {
      if (val4 > SERVOMIN) {
        Serial.print("Gripper OUT");
        Serial.println(val4);
        pwm.setPWM(7, 0, val4);
        val4 -= 4;
      }
    }

    if (data == 'Y') {
      if (val2 < SERVOMAX) {
        Serial.print("Arm Base IN");
        Serial.println(val2);
        pwm.setPWM(2, 0, val2);
        val2 += 4;
      }
    }

    if (data == 'C') {
      if (val2 > SERVOMIN) {
        Serial.print("Arm Base OUT");
        Serial.println(val2);
        pwm.setPWM(2, 0, val2);
        val2 -= 4;
      }
    }

    if (data == 'B') {
      if (val3 < SERVOMAX) {
        Serial.print("Arm Top IN");
        Serial.println(val3);
        pwm.setPWM(4, 0, val3);
        val3 += 4;
      }
    }

    if (data == 'X') {
      if (val3 > SERVOMIN) {
        Serial.print("Arm Top OUT");
        Serial.println(val3);
        pwm.setPWM(4, 0, val3);
        val3 -= 4;
      }
    }

    if (data == 'D') {
      if (val1 < SERVOMAX) {
        Serial.print("Base IN");
        Serial.println(val1);
        pwm.setPWM(0, 0, val1);
        val1 += 4;
      }
    }

    if (data == 'Z') {
      if (val1 > SERVOMIN) {
        Serial.print("Base IN");
        Serial.println(val1);
        pwm.setPWM(0, 0, val1);
        val1 -= 4;
      }
    }

    if (data == 'S') {
      Serial.println("stop");
    }
  }
}

```

#### In Laptop:

```py

#!/bin/python

import cv2
import mediapipe as mp
import math
from serial import Serial

mp_drawing = mp.solutions.drawing_utils
mp_hands = mp.solutions.hands

def calculate_distance(x1, y1, x2, y2):
    return math.sqrt((x2 - x1)**2 + (y2 - y1)**2)

def is_fist(landmarks):
    # Check if all finger tips are below their corresponding middle joints
    return (
        landmarks[mp_hands.HandLandmark.THUMB_TIP].y < landmarks[mp_hands.HandLandmark.THUMB_IP].y and
        landmarks[mp_hands.HandLandmark.INDEX_FINGER_TIP].y < landmarks[mp_hands.HandLandmark.INDEX_FINGER_PIP].y and
        landmarks[mp_hands.HandLandmark.MIDDLE_FINGER_TIP].y < landmarks[mp_hands.HandLandmark.MIDDLE_FINGER_PIP].y and
        landmarks[mp_hands.HandLandmark.RING_FINGER_TIP].y < landmarks[mp_hands.HandLandmark.RING_FINGER_PIP].y and
        landmarks[mp_hands.HandLandmark.PINKY_TIP].y < landmarks[mp_hands.HandLandmark.PINKY_PIP].y
    )

def get_hand_side(landmarks):
    # Check if the wrist is to the left or right of the index finger tip
    if landmarks[mp_hands.HandLandmark.WRIST].x < landmarks[mp_hands.HandLandmark.INDEX_FINGER_TIP].x:
        return "Left"
    else:
        return "Right"

def main():
    cap = cv2.VideoCapture(0)

    with mp_hands.Hands(max_num_hands=1) as hands:
        while cap.isOpened():
            ret, frame = cap.read()

            if not ret:
                print("Unable to capture frame.")
                break

            # Flip the frame horizontally to mirror the image
            frame = cv2.flip(frame, 1)

            # Convert the image from BGR to RGB
            image_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

            # Process the image with MediaPipe Hands
            results = hands.process(image_rgb)

            # Check for hand landmarks
            if results.multi_hand_landmarks:
                for hand_landmarks in results.multi_hand_landmarks:
                    # Draw hand landmarks on the image
                    mp_drawing.draw_landmarks(frame, hand_landmarks, mp_hands.HAND_CONNECTIONS)

                    # Get the coordinates of the index finger and thumb landmarks
                    index_finger = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP]
                    thumb = hand_landmarks.landmark[mp_hands.HandLandmark.THUMB_TIP]
                    wrist = hand_landmarks.landmark[mp_hands.HandLandmark.WRIST]

                    # Convert landmark coordinates to pixel values
                    height, width, _ = frame.shape
                    x1, y1 = int(index_finger.x * width), int(index_finger.y * height)
                    x2, y2 = int(thumb.x * width), int(thumb.y * height)

                    # Calculate the distance between the index finger and thumb
                    distance = calculate_distance(x1, y1, x2, y2)

                    # Count the number of fingers that are up
                    fingers_up = 0
                    landmarks = hand_landmarks.landmark
                    if landmarks[mp_hands.HandLandmark.THUMB_TIP].y < landmarks[mp_hands.HandLandmark.THUMB_IP].y:
                        fingers_up += 1
                    if landmarks[mp_hands.HandLandmark.INDEX_FINGER_TIP].y < landmarks[mp_hands.HandLandmark.INDEX_FINGER_PIP].y:
                        fingers_up += 1
                    if landmarks[mp_hands.HandLandmark.MIDDLE_FINGER_TIP].y < landmarks[mp_hands.HandLandmark.MIDDLE_FINGER_PIP].y:
                        fingers_up += 1
                    if landmarks[mp_hands.HandLandmark.RING_FINGER_TIP].y < landmarks[mp_hands.HandLandmark.RING_FINGER_PIP].y:
                        fingers_up += 1
                    if landmarks[mp_hands.HandLandmark.PINKY_TIP].y < landmarks[mp_hands.HandLandmark.PINKY_PIP].y:
                        fingers_up += 1

                    # Determine if the hand is right or left
                    hand_side = get_hand_side(hand_landmarks.landmark)

                    # Determine if there is a fist or not
                    is_hand_fist = is_fist(hand_landmarks.landmark)

                    # Display the number of fingers, distance, hand side, and fist status on the image
                    cv2.putText(frame, str(fingers_up), (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
                    cv2.putText(frame, str(int(distance)), (10, 70), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
                    cv2.putText(frame, hand_side, (10, 110), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
                    cv2.putText(frame, str(is_hand_fist), (10, 150), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

                    # Combine the values
                    combined_values = [fingers_up, int(distance), hand_side, str(is_hand_fist)]

                    # Print the combined values
                    print(combined_values)

                    # Print the corresponding letter based on the conditions
                    if fingers_up == 2 and distance < 60:
                        print("Gripper IN")                    
                        input_value = 'A'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif fingers_up == 2 and distance > 60:
                        print("Gripper OUT")
                        input_value = 'W'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif fingers_up == 4 and hand_side == "Right" and not is_hand_fist:
                        print("Arm Base IN")
                        input_value = 'C'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif fingers_up == 4 and hand_side == "Left" and not is_hand_fist:
                        print("Arm Base OUT")
                        input_value = 'Y'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif not is_hand_fist and hand_side == "Right":
                        print("Arm Top IN")
                        input_value = 'B'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif not is_hand_fist and hand_side == "Left":
                        print("Arm Top OUT")
                        input_value = 'X'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif fingers_up == 5 and hand_side == "Right":
                        print("Base IN")
                        input_value = 'D'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    elif fingers_up == 5 and hand_side == "Left":
                        print("Base OUT")
                        input_value = 'Z'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

                    else:
                        print("STOP")
                        input_value = 'S'
                        ardu = Serial('/dev/ttyUSB0', 9600, timeout=0.01)
                        ardu.write(input_value.encode())

            # Display the mirrored image with landmarks
            cv2.imshow('Finger Tracking', frame)

            # Exit loop when 'q' is pressed
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()

```

### Testing:

The arm was completed, and it was time to test it. The servos were connected to power supply and the USB was connected to the Arduino. With the necessary code uploaded to the Arduino, the python script was run, and hand gestures were read from the computer which then converted to Serial signals and the code in Arduino interprets those Serial signals as per the uploaded code. Here, in the first trial reading the Front and Back side of the hand gave same results, I replaced the code for Left and Right aligned hand, which showed Right when I showed my right-hand palm to the Camera, and left when I showed my right-hand back to the camera, and vice-versa for the left hand. Which fixed the issue.

### Challenges and Solutions:

There were not many challenges to make a working prototype which my arm is at the moment. But further improvement on the gestures are going to be challenging like; to read and interpret natural human arm movements in digital form and to match the movement of robot arm with an actual human arm.

### Conclusion:

In conclusion, the CV robotic arm is a working prototype for better control of devices requiring less time to adapt. It helps people to be familiar with using complex devices like robotic arm in a very short period of time. 
