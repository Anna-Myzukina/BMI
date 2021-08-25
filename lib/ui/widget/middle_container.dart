import 'package:flutter/material.dart';

class MiddleContainer extends StatefulWidget {
  final String title;
  final int value;
  const MiddleContainer({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  _MiddleContainerState createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  int value = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Text(
              value.toString(),
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 40.0,
                color: Color(0xFF848899),
              ),
            ),
          ),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: FloatingActionButton(
                        backgroundColor: Color(0xFFEDEDED),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF848899),
                        ),
                        onPressed: () {
                          setState(() {
                            if (value >= 220) {
                              return;
                            } else {
                              value++;
                            }
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: FloatingActionButton(
                        backgroundColor: Color(0xFFEDEDED),
                        child: Icon(
                          Icons.remove,
                          color: Color(0xFF848899),
                        ),
                        onPressed: () {
                          setState(() {
                            if (value <= 0) {
                              return;
                            } else {
                              value--;
                            }
                          });
                        }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
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
    );
  }
}
