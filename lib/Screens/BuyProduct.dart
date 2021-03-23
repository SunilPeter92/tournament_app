import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';

class BuyProduct extends StatefulWidget {
  @override
  _BuyProductState createState() => _BuyProductState();
}

class _BuyProductState extends State<BuyProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Buy Product ',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox( width: 10,),
                  Container(
                    height: 50,
                      width: 60,
                      child: Icon(Icons.account_balance_wallet_sharp , color: Colors.deepOrangeAccent,size: 70,)
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('Your Current Balance:'),
                          Icon(Icons.monetization_on, color: Colors.amber,),
                          Text('300', style: TextStyle(fontWeight: FontWeight.w700)),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Total Payable Amount:'),
                          Icon(Icons.monetization_on, color: Colors.amber,),
                          Text('300', style: TextStyle(fontWeight: FontWeight.w700),),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                ],
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Address',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Additional Information',
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width/2.7,
                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(5)
                  ),

                  child: Center(child: Text("Cancle", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width/2.7,
                  decoration: BoxDecoration(
                      color:DarkGreen,
                      borderRadius: BorderRadius.circular(5)
                  ),

                  child: Center(child: Text("BUY NOW", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
