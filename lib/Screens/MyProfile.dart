import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/API.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}
enum SingingCharacter {Male , Female }
class _MyProfileState extends State<MyProfile> {
  SingingCharacter _character = SingingCharacter.Male;

  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final dobController = TextEditingController();
  final oldpassController = TextEditingController();
  final newpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'My Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(left: 5,right: 5),
         child: Form(
           key: _formKey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 10,),
               Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.w800),),
               Container(
                 padding: EdgeInsets.only(left: 10,right: 10),
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Container(
                           width: MediaQuery.of(context).size.width/2.5,
                           child: TextFormField(
                             decoration: InputDecoration(
                               labelText: 'First Name',
                             ),
                           ),
                         ),
                         Spacer(),
                         Container(
                           width: MediaQuery.of(context).size.width/2.5,
                           child: TextField(
                             decoration: InputDecoration(
                               labelText: 'Last Name',
                             ),
                           ),
                         ),

                       ],
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       child: TextFormField(
                         controller: usernameController,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter some text';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           labelText: 'Username',
                         ),
                       ),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       child: TextFormField(
                         controller: emailController,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter some text';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           labelText: 'Email Address',
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Row(
                         children: [
                           Container(
                             height: 45,
                             width: MediaQuery.of(context).size.width/1.5,
                             child: IntlPhoneField(
                               controller: mobileController,
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Please enter some text';
                                 }
                                 return null;
                               },
                               decoration: InputDecoration(
                                 hintText: 'Mobile Number',
                               ),
                               onChanged: (phone) {
                                 print(phone.completeNumber);
                               },
                             ),
                           ),
                           Spacer(),
                           Container(
                             height: 45,
                             width: MediaQuery.of(context).size.width/4.5,
                             decoration: BoxDecoration(
                                 color:DarkGreen,
                                 borderRadius: BorderRadius.circular(5)
                             ),

                             child: Center(child: Text("Verified", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
                           ),
                         ],
                       ),
                     ),

                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       child: TextFormField(
                         controller: dobController,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter some text';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           labelText: 'Date of Birth',
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               Container(
                 width: MediaQuery.of(context).size.width/1.1,
                 child: Row(
                   children: [
                     Text("Gender:"),
                     SizedBox(width: 10,),
                     Container(
                       height: 40,
                       child:  Radio(
                         value: 1,
                         groupValue: id,
                         onChanged: (val) {
                           setState(() {
                             radioButtonItem = 'Male';
                             id = 1;
                           });
                         },
                       ),
                     ),
                     Text(
                       'Male',
                       style: new TextStyle(fontSize: 17.0),
                     ),
                     Container(
                       height: 40,
                       child:  Radio(
                         value: 2,
                         groupValue: id,
                         onChanged: (val) {
                           setState(() {
                             radioButtonItem = 'FeMale';
                             id = 2;

                           });
                         },
                       ),
                     ),
                     Text(
                       'Female',
                       style: new TextStyle(fontSize: 17.0),
                     ),
                   ],
                 ),
               ),

               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: InkWell(
                   onTap: (){
                     if (_formKey.currentState.validate()) {
                       // pr.show();
                       API.Edit_Profile(context , usernameController.text ,  emailController.text , mobileController.text , dobController.text , radioButtonItem.toString() , '4'  );
                     }
                   },
                   child: Container(
                     height: 45,
                     width: MediaQuery.of(context).size.width/1.2,
                     decoration: BoxDecoration(
                         color:DarkGreen,
                         borderRadius: BorderRadius.circular(5)
                     ),

                     child: Center(child: Text("UPDATE PROFILE", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               Text('Reset Password', style: TextStyle(fontWeight: FontWeight.w800),),
               Container(
                 padding: EdgeInsets.only(left: 10,right: 10),
                 child: Column(
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       child: TextFormField(
                         controller: oldpassController,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter some text';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           labelText: 'old password',
                         ),
                       ),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       child: TextFormField(
                         controller: newpassController,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter some text';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           labelText: 'new password',
                         ),
                       ),
                     ),

                   ],
                 ),
               ),
               SizedBox(height: 15,),
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: InkWell(
                   onTap: (){
                     if (_formKey.currentState.validate()) {
                       // pr.show();
                       API.Reset_Password(context ,  oldpassController.text , newpassController.text , '4'  );
                     }
                   },
                   child: Container(
                     height: 45,
                     width: MediaQuery.of(context).size.width/1.2,
                     decoration: BoxDecoration(
                         color:DarkGreen,
                         borderRadius: BorderRadius.circular(5)
                     ),

                     child: Center(child: Text("RESET", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
                   ),
                 ),
               ),

             ],
           ),
         )
        ),
      ) ,
    );
  }
}
