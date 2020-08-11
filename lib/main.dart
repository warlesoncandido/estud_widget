import 'package:animation_estud/widgets/dots_pass.dart';
import 'package:animation_estud/widgets/loading.dart';
import 'package:animation_estud/widgets/stepper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _bottom() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return PasswordDots(maxCharacter: 8);
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoadingPortal(
          isLoading: false,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: _bottom,
                  child: Text("dots andamento"),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("loading andamento"),
                ),
                Divider(),
                Text("Stepper"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppStepper(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
