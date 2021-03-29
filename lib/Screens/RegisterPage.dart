import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tournament_app/API.dart';
import 'package:tournament_app/Widget/Button.dart';
import 'package:tournament_app/Widget/text.dart';
import 'package:tournament_app/Widget/textFields.dart';
import 'package:tournament_app/Screens/Models/UserRegisterModel.dart';

import '../Constant.dart';
import '../Widget/text.dart';
import 'Login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final countrynameController = TextEditingController();
  final usernameController = TextEditingController();
  final mobilenoController = TextEditingController();
  final promocodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Register',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 0.92,
          padding: EdgeInsets.only(top: 20),
          child: Form(
            key: _formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texts(data: 'User Name'),
                SizedBox(
                  height: 10,
                ),
                Textfield(
                  hintText: 'John Doe',
                  inputTye: TextInputType.text,
                  obs: false,
                  controllar: usernameController,
                  textValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Texts(
                  data: 'E-mail',
                ),
                SizedBox(
                  height: 5,
                ),
                Textfield(
                  hintText: 'John@doe.com',
                  inputTye: TextInputType.emailAddress,
                  obs: false,
                  controllar: emailController,
                  textValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Texts(
                  data: 'Password',
                ),
                SizedBox(
                  height: 5,
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
                  height: 10,
                ),
                Texts(
                  data: 'Mobile No',
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(30)),
                  ),
                  width: MediaQuery.of(context).size.width / 1.12,
                  child: IntlPhoneField(
                    obscureText: false,
                    controller: mobilenoController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                // Textfield(hintText: 'Mobile No',inputTye: TextInputType.phone,obs: false,controllar: mobilenoController,textValidator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter some text';
                //   }
                //   return null;
                // },),
                SizedBox(
                  height: 10,
                ),
                Texts(
                  data: 'Country',
                ),
                SizedBox(
                  height: 5,
                ),
                Textfield(
                  hintText: 'Country',
                  inputTye: TextInputType.emailAddress,
                  obs: false,
                  controllar: countrynameController,
                  textValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Texts(
                  data: 'Promo Code',
                ),
                SizedBox(
                  height: 5,
                ),
                Textfield(
                  hintText: 'Optional',
                  inputTye: TextInputType.emailAddress,
                  obs: false,
                  controllar: promocodeController,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: Text(
                      'Login instead',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
                Spacer(),
                Button(
                  title: 'Register',
                  voidCallBack: () {
                    if (_formKey.currentState.validate()) {
                      API.register(
                          context,
                          UserRegisterModel(
                              getUser: GetUser(
                                  email: emailController.text,
                                  uname: usernameController.text,
                                  country: countrynameController.text,
                                  mobile: mobilenoController.text,
                                  password: passwordController.text,
                                  promo: promocodeController.text)));
                      //   context,
                      //     usernameController.text,
                      //     emailController.text,
                      //     passwordController.text,
                      //     countrynameController.text,
                      //     mobilenoController.text,
                      //     promocodeController.text
                      // );
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
