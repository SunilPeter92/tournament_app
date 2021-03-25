import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final hintText;
  final inputTye;
  final obs;
  final Function textValidator;
  final controllar;

  const Textfield({Key key, this.hintText, this.inputTye, this.obs , this.textValidator , this.controllar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: TextFormField(
        controller: controllar,
        cursorColor: Colors.white,
        obscureText: obs,
        validator: textValidator,
        keyboardType: inputTye,
        style: TextStyle(color: Colors.black,fontSize: 18),
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
