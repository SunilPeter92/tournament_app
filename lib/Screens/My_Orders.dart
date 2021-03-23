import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LISTS/OrderList.dart';
import 'package:tournament_app/Screens/Order_Detail.dart';

class My_Orders extends StatefulWidget {
  @override
  _My_OrdersState createState() => _My_OrdersState();
}

class _My_OrdersState extends State<My_Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'My Order',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.09,
              child:  ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: orderList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Order_Details()),
                          );
                        },
                        child: Container(
                          height: 115,
                          width: MediaQuery.of(context).size.width/1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),

                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width:100,
                                  height: 150,
                                  child: Image.asset(orderList[index].image)
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(orderList[index].orderno, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Text('Price :'),
                                        Icon(Icons.monetization_on, color: Colors.amber,),
                                        Text(orderList[index].price.toString()),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text('Order Date :'),
                                        Text(orderList[index].orderdate),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text('Status :'),
                                        Text(orderList[index].status),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ) ,


                        ),
                      ),
                    );


                  }
              ),
            )
          ],

        ),
      ),
    );
  }
}
