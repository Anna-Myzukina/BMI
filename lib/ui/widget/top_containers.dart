import 'package:flutter/material.dart';

class TopContainer extends StatefulWidget {
  final String gender;
  final Color color;

  final bool active;
  const TopContainer({
    Key? key,
    this.gender = 'Female',
    this.color = Colors.white,
    this.active = false,
  }) : super(key: key);

  @override
  _TopContainerState createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Container(
          child: Center(
            child: Text(
              widget.gender,
              style: TextStyle(
                color: widget.active ? Colors.white : Colors.cyan,
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
            color: (widget.active) ? const Color(0xFF59c8e3) : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
