import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tournament_app/Screens/BottomNavigation.dart';
import 'package:tournament_app/Widget/FaceBooklogin_Button.dart';
import 'package:tournament_app/Widget/textFields.dart';
import '../Constant.dart';
import '../Widget/Button.dart';
import '../Widget/text.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login',style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      backgroundColor: Backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top:50),
          child: Column(
            children: [
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
                      border: Border(bottom: BorderSide(color: Backgroundcolor))
                  ),
                  child: Text('Forget your password',style: TextStyle(color: Colors.black, fontSize: 17),)
              ),
              SizedBox(height: 20,),
              Button(title: 'Login',voidCallBack: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()),
                );
              },),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: "Dont't have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  children: <TextSpan>[
                    TextSpan(text: "Register Here", style:  TextStyle(color: Colors.black, fontSize: 17)),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Backgroundcolor))
                  ),
                  child: Text('OR',style: TextStyle(color: Colors.black, fontSize: 17),)
              ),
              Texts(data: 'Login with',),
              SizedBox(height: 20,),

              FBLoginButton(icon:FontAwesomeIcons.google,
                data: "Login with Google", voidCallBack: (){},),
              SizedBox(height: 5,),
              FBLoginButton(icon:FontAwesomeIcons.facebookF,
                data: "Login with Facebook", voidCallBack: (){},),
              SizedBox(height: 10,),
             // FBLoginButton(icon: FaIcon(FontAwesomeIcons.facebook , size: 20,), title: "Login with facebook",),
            ],
          ),
        ),
      ),
    );
  }
}
