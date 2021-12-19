import 'package:f2f/screens/buy_auction_screen.dart';
import 'package:flutter/material.dart';

class AuctionScreen extends StatefulWidget {
  const AuctionScreen({Key? key}) : super(key: key);

  @override
  _AuctionScreenState createState() => _AuctionScreenState();
}

class _AuctionScreenState extends State<AuctionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Auction",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
            ),

          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {},
                    color: Colors.amber,
                    height: 50,
                    minWidth: 165,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Create',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),

                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              BuyAuctionScreen()));
                    },
                    color: const Color(0xFF29313C),
                    height: 50,
                    minWidth: 165,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Shared',
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
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.time_to_leave,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Cars and bikes",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.dvr_outlined,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Electronics",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.real_estate_agent_outlined,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Real estate",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.miscellaneous_services_outlined,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Services",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.menu_book_outlined,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Books",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Clothes",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                color: const Color(0xFF29313C),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Icon(
                                Icons.local_mall_outlined,
                                size: 35,
                                color: Colors.amber,
                              )
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Grocery",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "10 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber
                              ),
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
