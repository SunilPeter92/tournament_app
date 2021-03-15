import 'package:flutter/material.dart';
import 'package:tournament_app/Widget/Button.dart';
import 'package:tournament_app/Widget/text.dart';
import 'package:tournament_app/Widget/textFields.dart';

import '../Constant.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Text('Register',style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      backgroundColor: kprimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Texts(data:'User Name'),
          Textfield(hintText: 'John Doe',inputTye: TextInputType.text,obs: false,),
          Texts(data: 'E-mail',),
          Textfield(hintText: 'John@doe.com',inputTye: TextInputType.emailAddress,obs: false,),
          Texts(data: 'Password',),
          Textfield(hintText: '*******',inputTye: TextInputType.visiblePassword,obs:true),
          Button(title: 'Register',voidCallBack: (){
          },),
        ],
      ),
    );
  }
}
