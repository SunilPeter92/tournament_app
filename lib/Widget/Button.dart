import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final voidCallBack;
  final title;

  const Button({Key key, this.voidCallBack, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: voidCallBack,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(title,  style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.black,
        ),
      ),
    );
  }
}
