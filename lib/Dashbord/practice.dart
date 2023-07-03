import 'package:flutter/material.dart';
import 'dart:math' as math;



class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double slider1Value = 5;
  double slider2Value = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(30),
          ),
          child:  RotatedBox(
            quarterTurns: 3,
            child: Slider(
              value: slider1Value,
              min: 0,
              max: 10,
              onChanged: (newValue) {
                setState(() {
                  slider1Value = newValue;
                  // Update the value of the second slider
                  slider2Value = newValue;
                });
              },
            ),
          ),
        ),

        SizedBox(height: 20),
        RotatedBox(
          quarterTurns: 3,
          child: Slider(
            value: slider2Value,
            min: 0,
            max: 10,
            onChanged: (newValue) {
              setState(() {
                slider2Value = newValue;
                // Update the value of the first slider
                slider1Value = newValue;
              });
            },
          ),
        ),
      ],
    );
  }
}

