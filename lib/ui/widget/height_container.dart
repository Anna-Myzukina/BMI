import 'package:bmi_calculator/shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeightContainer extends StatefulWidget {
  const HeightContainer({Key? key}) : super(key: key);

  @override
  _HeightContainerState createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
  double _currentSliderValue = 170;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Height',
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFEDEDED),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1.0,
                        blurRadius: 2.0,
                        offset: Offset(-1, 0),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1.0,
                        blurRadius: 1.0,
                        offset: Offset(1, 2),
                      ),
                    ]),
                height: 300.0,
                width: 10.0,
                margin: EdgeInsets.all(10.0),
                //color: Colors.white,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Slider(
                    value: _currentSliderValue,
                    min: 110,
                    max: 230,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ),
              // Column(),
            ],
          ),
        ],
      ),
      height: 350.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff9eadb6),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(-2.0, -2.0),
            blurRadius: 3.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
        color: Color(0xFFEDEDED),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
