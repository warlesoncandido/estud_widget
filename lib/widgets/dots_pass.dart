import 'package:flutter/material.dart';

class PasswordDots extends StatefulWidget {
  final int maxCharacter;
  final double sizeDots;
  final EdgeInsets paddingDots;

  const PasswordDots({
    Key key,
    @required this.maxCharacter,
    this.sizeDots = 24,
    this.paddingDots = const EdgeInsets.symmetric(horizontal: 20),
  }) : super(key: key);
  @override
  _PasswordDotsState createState() => _PasswordDotsState();
}

class _PasswordDotsState extends State<PasswordDots> {
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget dots({Color enabled, Color disabled, bool isEnabled = false}) {
      return Container(
        width: widget.sizeDots,
        height: widget.sizeDots,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isEnabled == true ? Colors.blue : Colors.orange,
        ),
      );
    }

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                widget.maxCharacter,
                (index) => dots(
                  isEnabled: index <= passController.text.length ? true : false,
                ),
              ),
            ),
          ),
          TextField(
            autofocus: true,
            controller: passController,
            maxLength: widget.maxCharacter,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
