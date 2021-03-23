import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';

class WithDraw_Money extends StatefulWidget {
  @override
  _WithDraw_MoneyState createState() => _WithDraw_MoneyState();
}
enum SingingCharacter {GooglePay,  payTm, payPal , bKash }

class _WithDraw_MoneyState extends State<WithDraw_Money> {
  SingingCharacter _character = SingingCharacter.GooglePay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Withdraw Money',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 30 , left: 30 , right: 30),
          child: Column(

            children: [
              Text(
                'Withdraw to Google Pay',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width/1.1,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: ('Mobile Number'),
                  ),
                  style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.1,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon:Icon( Icons.monetization_on , color: Colors.amber,size: 20,),
                    labelText: ('Amount'),
                  ),
                  style: TextStyle(fontSize: 18 ,),
                ),
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Text(
                    'Withdraw to:',
                    style: TextStyle(fontSize: 24,),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    child: ListTile(
                      title: const Text('GooglePay'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.GooglePay,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ListTile(
                      title: const Text('payTm'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.payTm,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ListTile(
                      title: const Text('payPal'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.payPal,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ListTile(
                      title: const Text('bKash'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.bKash,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                    color:DarkGreen,
                    borderRadius: BorderRadius.circular(5)
                ),

                child: Center(child: Text("WITHDRAW MONEY", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
              ),
              SizedBox(height: 50,),
              Text(
                'You can Only withdraw win money.',
                style: TextStyle(
                    color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 80,),



            ],
          ),
        ),
      ),
    );
  }
}
