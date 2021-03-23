import 'package:flutter/material.dart';
import 'package:tournament_app/Widget/Button.dart';
import 'package:tournament_app/Widget/text.dart';
import 'package:tournament_app/Widget/textFields.dart';

import '../Constant.dart';
import '../Widget/text.dart';
import 'Login.dart';
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
      backgroundColor: Backgroundcolor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top:100),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Texts(data:'User Name'),
            SizedBox(height: 10,),
            Textfield(hintText: 'John Doe',inputTye: TextInputType.text,obs: false,),
            SizedBox(height: 20,),
            Texts(data: 'E-mail',),
            SizedBox(height: 10,),
            Textfield(hintText: 'John@doe.com',inputTye: TextInputType.emailAddress,obs: false,),
            SizedBox(height: 20,),
            Texts(data: 'Password',),
            SizedBox(height: 10,),
            Textfield(hintText: '*******',inputTye: TextInputType.visiblePassword,obs:true),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))
              ),
                child: Text('Login instead', style: TextStyle(color: Colors.black, fontSize: 17),)
            ),
            Spacer(),
            Button(title: 'Register',voidCallBack: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
