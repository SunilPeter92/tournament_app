import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/BuyProduct.dart';

class ProductDescription extends StatefulWidget {
  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Product Details',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10 , right: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                height: 200,
                color: Colors.greenAccent,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/Screen5Card.png", fit: BoxFit.fill,),
              ),
              SizedBox(height: 3,),
              Card(
                  child: Container(
                    padding: EdgeInsets.only(left: 5 , right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text('Key Tech Pubg Pocket Watch Metal Keychain', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('Lorem Ipsum is simply dummy text of the printing and typessetting industry ', style: TextStyle(fontSize: 15,),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.monetization_on, color: Colors.amber,),
                            Text('300'),
                            Spacer(),
                            Icon(Icons.monetization_on, color: Colors.amber,),
                            Text('149'),

                          ],
                        ),
                      ],
                    ),
                  )),
              Card(
                child:Container(
                  padding: EdgeInsets.only(left: 5 , right: 5),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w800  ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Why do we use it?",
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w800  ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Where does it come from",
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w800  ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                      ),
                    ],
                  ),
                ),
              ) ,
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyProduct()),
                  );
                },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color:DarkGreen,
                    borderRadius: BorderRadius.circular(5)
                  ),

                  child: Center(child: Text("BUY NOW", style:TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ),)),
                ),
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
