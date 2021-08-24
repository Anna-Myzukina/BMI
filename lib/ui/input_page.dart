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
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        active = !active;
                      });
                    },
                    child: TopContainer(
                      gender: 'Male',
                      color: Colors.white,
                      active: active,
                    )),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      active = !active;
                    });
                  },
                  child: TopContainer(
                    gender: 'Female',
                    color: Colors.cyan,
                    active: !active,
                  ),
                ),
              ),
              // Male
              // Expanded(
              //   child: Container(
              //     child: Center(
              //       child: Text(
              //         'Female',
              //         style: TextStyle(
              //           color: Colors.cyan,
              //           fontSize: 20.0,
              //         ),
              //       ),
              //     ),
              //     height: 50.0,
              //     margin: EdgeInsets.all(10.0),
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Color(0xff9eadb6),
              //           offset: const Offset(
              //             5.0,
              //             5.0,
              //           ),
              //           blurRadius: 10.0,
              //           spreadRadius: 2.0,
              //         ), //BoxShadow
              //         BoxShadow(
              //           color: Colors.white,
              //           offset: const Offset(-2.0, -2.0),
              //           blurRadius: 3.0,
              //           spreadRadius: 2.0,
              //         ), //BoxShadow
              //       ],
              //       color: Color(0xFFEDEDED),
              //       borderRadius: BorderRadius.circular(15.0),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
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
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 170.0,
                  margin: EdgeInsets.all(15.0),
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
                Container(
                  height: 170.0,
                  margin: EdgeInsets.all(15.0),
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
