import 'package:flutter/material.dart';

class AppStepper extends StatefulWidget {
  @override
  _AppStepperState createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 5,
              color: Colors.black,
            ),
          ),
          Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  3,
                  (index) => Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Center(
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
