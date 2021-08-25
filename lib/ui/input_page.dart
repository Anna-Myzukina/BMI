import 'package:bmi_calculator/ui/widget/height_container.dart';
import 'package:bmi_calculator/ui/widget/middle_container.dart';
import 'package:bmi_calculator/ui/widget/top_containers.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEDED),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              // Do something.
            }),
        elevation: 0.0,
        title: Text(
          'BoxShadow Example',
          style: TextStyle(color: Color(0xFF666f83)
              //color: Color(0xFF9295f4),
              ),
        ),
      ),
      body: Column(children: [
        Icon(Icons.remove),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      'Female',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  height: 50.0,
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
                ),
              ),
              //Male
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      'Female',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  height: 50.0,
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
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: HeightContainer(),
            ),
            Expanded(
                child: Column(
              children: [
                MiddleContainer(
                  title: 'Weight',
                  value: 10,
                ), //Weight

                MiddleContainer(
                  title: 'Age',
                  value: 10,
                ), //Age
              ],
            )),
          ],
        ),
        Container(
          height: 50.0,
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0, bottom: 30.0),
          //padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
            color: Color(0xFF59c8e3),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ]),
    );
  }
}
