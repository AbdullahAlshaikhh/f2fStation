import 'package:f2f/screens/product_details_from_auction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({Key? key}) : super(key: key);

  @override
  _MyListScreenState createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "My List",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Card(
                color: const Color(0xFF29313C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              child: ClipRRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    "assets/images/diamond.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.fitHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.amber,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "Main Plan",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber),
                          ),
                          const Text(
                            "(28 days left)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white24),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          FlatButton(
                            minWidth: 125,
                            onPressed: () {},
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text('Subscription'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Available moves: ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Align(
                        heightFactor: 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 13),
                              child: Column(
                                children: const [
                                  Text(
                                    "Buy/Sell:5",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Auctions:0",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Forward:2",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) =>
                      //         BuyAuctionScreen()));
                    },
                    color: const Color(0xFF29313C),
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Promotions',
                      style: TextStyle(
                          fontSize: 18,
                        color: Colors.green
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) =>
                      //         BuyAuctionScreen()));
                    },
                    color: const Color(0xFF29313C),
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Archive',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.amber
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) =>
                      //         BuyAuctionScreen()));
                    },
                    color: const Color(0xFF29313C),
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Ended',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
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
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                itemCount: 2,
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
                                Icon(Icons.schedule_outlined,color: Colors.amber,size: 15,),
                                Text(
                                  "start:18/11/2021 5:00 PM",
                                  style: TextStyle(
                                      fontSize: 14
                                  ),
                                ),
                                // Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(Icons.schedule_outlined,color: Colors.amber,size: 15,),
                                Text(
                                  "end:19/11/2021 1:26 PM",
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
    );
  }
}
