import 'package:bmi_calculator/ui/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFFEDEDED),
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.purpleAccent,
          ))),
      home: InputPage(),
    );
  }
}
