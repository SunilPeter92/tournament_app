import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LISTS/ProductList.dart';
import 'package:tournament_app/Screens/ProductDescription.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Shop Now',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: MediaQuery.of(context).size.height/1.15 ,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemCount: productList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductDescription()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 3, right: 3),
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(5),
                            // image: DecorationImage(
                            //   image: AssetImage(earnList[index].image),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 125,
                                  child: Image.asset(productList[index].image ,fit: BoxFit.fill,)),
                              Text(productList[index].name , maxLines: 1,overflow: TextOverflow.ellipsis,),
                              Row(
                                children: [
                                  Icon(Icons.monetization_on, color: Colors.amber,),
                                  Text(productList[index].price1.toString()),
                                  Spacer(),
                                  Icon(Icons.monetization_on, color: Colors.amber,),
                                  Text(productList[index].price2.toString()),

                                ],
                              ),

                            ],
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
