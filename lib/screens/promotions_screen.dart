import 'package:f2f/screens/product_details_from_auction.dart';
import 'package:f2f/screens/sale_from_transfer_screen.dart';
import 'package:flutter/material.dart';

import 'buy_from_transfer_screen.dart';

class PromotionsScreen extends StatefulWidget {
  const PromotionsScreen({Key? key}) : super(key: key);

  @override
  _PromotionsScreenState createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 5,right: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Promotions",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 12,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.amber, fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (BuildContext context) =>
                        //         SaleFromTransfer()));
                      },
                      color: const Color(0xFF29313C),
                      height: 40,
                      minWidth: 140,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Digital Coins',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    FlatButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (BuildContext context) =>
                        //         BuyFromTransfer()));
                      },
                      color: Colors.amber,
                      height: 40,
                      minWidth: 140,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Products',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "promo",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.filter_alt),
                        Align(
                          widthFactor: 1,
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Filter",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProductDetailsFromAuction()));
                        },
                        child: Card(
                          color: const Color(0xFF29313C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                child: ClipRRect(
                                  child: Image.asset(
                                    "assets/images/laptop.jpg",
                                    height: 120,
                                    width: 175,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.topCenter,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Laptop HP",
                                    style: TextStyle(
                                        fontSize: 18
                                    ),
                                  ),
                                  // Icon(Icons.favorite_border_outlined,color: Colors.red,)
                                ],
                              ),
                              SizedBox(height: 7,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.monetization_on_outlined,color: Colors.amber,size: 15,),
                                  Text(
                                    "for 0.052BTC",
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  ),
                                  // Icon(Icons.favorite_border_outlined,color: Colors.red,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
