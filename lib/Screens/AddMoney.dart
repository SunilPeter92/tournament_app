import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';

class Add_Money extends StatefulWidget {
  @override
  _Add_MoneyState createState() => _Add_MoneyState();
}
enum SingingCharacter { payTm, payPal , offline , payStack , instamojo , Razorpay , Cashfree }

class _Add_MoneyState extends State<Add_Money> {
  SingingCharacter _character = SingingCharacter.payTm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Add Money',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30 , left: 30 , right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Amount'),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.1,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon:Icon( Icons.monetization_on , color: Colors.amber,size: 20,),


                  ),
                  style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),
                ),
              ),

              Column(
                children: <Widget>[
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
                      title: const Text('offline'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.offline,
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
                      title: const Text('payStack'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.payStack,
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
                      title: const Text('instamojo'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.instamojo,
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
                      title: const Text('Razorpay'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Razorpay,
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
                      title: const Text('Cashfree'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Cashfree,
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

                child: Center(child: Text("ADD MONEY", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
