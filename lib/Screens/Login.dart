import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tournament_app/API.dart';
import 'package:tournament_app/Screens/BottomNavigation.dart';
import 'package:tournament_app/Screens/RegisterPage.dart';
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

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoggedIn ;

  ProgressDialog pr;

  void initState() {
    pr = ProgressDialog(context);
    super.initState();
  }
  @override
  void setState(fn) async {
    // TODO: implement setState
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs?.setBool("isLoggedIn", true);
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Texts(
                  data: 'E-mail',
                ),
                SizedBox(
                  height: 10,
                ),
                Textfield(
                  hintText: 'John@doe.com',
                  inputTye: TextInputType.emailAddress,
                  obs: false,
                  textValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  controllar: emailController,
                ),
                SizedBox(
                  height: 20,
                ),
                Texts(
                  data: 'Password',
                ),
                SizedBox(
                  height: 10,
                ),
                Textfield(
                  hintText: '*******',
                  inputTye: TextInputType.visiblePassword,
                  obs: true,
                  controllar: passwordController,
                  textValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Backgroundcolor))),
                    child: Text(
                      'Forget your password',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
                SizedBox(
                  height: 20,
                ),
                Button(
                  title: 'Login',
                  voidCallBack: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                   if (_formKey.currentState.validate()) {
                    // pr.show();
                     API.login(context ,   emailController.text , passwordController.text);
                   }


                   //  API.login(context, 'reyan123@gmail.com', '123456');
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont't have an account?" ,style: TextStyle(color: Colors.black, fontSize: 13)),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );} ,
                        child: Text( "Register Here",style: TextStyle(color: Colors.black, fontSize: 15))),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Backgroundcolor))),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
                Texts(
                  data: 'Login with',
                ),
                SizedBox(
                  height: 20,
                ),

                FBLoginButton(
                  icon: FontAwesomeIcons.google,
                  data: "Login with Google",
                  voidCallBack: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                FBLoginButton(
                  icon: FontAwesomeIcons.facebookF,
                  data: "Login with Facebook",
                  voidCallBack: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                // FBLoginButton(icon: FaIcon(FontAwesomeIcons.facebook , size: 20,), title: "Login with facebook",),
              ],
            ),
          ),
        ),
      ),
    );
  }

  textValidator(emailController) {
    if (emailController == null) {
      return 'Please enter some text';
    }
    return null;
  }
}
