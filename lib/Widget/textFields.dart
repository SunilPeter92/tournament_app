import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final hintText;
  final inputTye;
  final obs;

  const Textfield({Key key, this.hintText, this.inputTye, this.obs}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: TextField(
        cursorColor: Colors.white,
        obscureText: obs,

        keyboardType: inputTye,
        style: TextStyle(color: Colors.white,fontSize: 18),
        textAlign: TextAlign.center,
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(30)
            ),
          ),
          hoverColor: Colors.white,
          filled: false,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[800]),

        ),
      ),
    );
  }
}
