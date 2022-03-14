import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  bool male;
  int result;
  int age;
  ResultScreen({
    required  this.male,
    required this.result,
    required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.indigo[900],
        title: Text(
          'Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.indigo[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text(
                'Gender: ${male?"Male":"Female"}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                  'Result: $result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,

                ),

              ),
              Text(
                  'Age: $age',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,

                ),

              ),

            ],      ),
        ),
      ),
    );
  }
}
