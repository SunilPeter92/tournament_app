import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constant.dart';
import '../Constant.dart';

class FBLoginButton extends StatelessWidget {
  final data;
  final icon;
  final voidCallBack;

  const FBLoginButton({Key key, this.icon , this.data , this.voidCallBack}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center, //alignment of content//padding of container wrapper
        child:FlatButton.icon(

          onPressed:(){
           voidCallBack();
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Icon(icon,
              size: 20, //Icon Size
              color: kprimary, //Color Of Icon
            ),
          ),
          label: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 170,
              child: Text(data , style: TextStyle(
                  fontSize: 18, //button font size
                  color: Colors.black //button font color
              ),),
            ),
          ),
          color: Colors.white, //
          shape:  new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)),

          // color of button
        )
    );

   // );


    //   InkWell(
    //   onTap: voidCallBack ,
    //   child: Container(
    //     height: 50,
    //     decoration: BoxDecoration(
    //       border: Border.all(color: Colors.green),
    //       borderRadius: BorderRadius.circular(10)
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Icon(icon , size: 20,),
    //         SizedBox(width: 20,),
    //         Text(
    //           data,
    //           style: TextStyle(
    //               color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
