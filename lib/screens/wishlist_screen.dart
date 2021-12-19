import 'package:f2f/splash/components/body.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, bottom: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          AssetImage('assets/images/profile_photo.png')),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Align(
                        heightFactor: 0.9,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ' Elon Mask',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {},
                    color:  Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Advices'),
                  ),
                  const SizedBox(width: 10,),
                  FlatButton(
                    onPressed: () {},
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Sell'),
                  ),
                  const SizedBox(width: 10,),
                  FlatButton(
                    onPressed: () {},
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Transfer'),
                  ),
                  const SizedBox(width: 10,),
                  FlatButton(
                    onPressed: () {},
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Auction'),
                  )
                ],
              ),
            ),
            const Divider(),
             Padding(
               padding: const EdgeInsets.only(left: 5,right: 5),
               child: Card(
                color: const Color(0xFF29313C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                             child: Image.asset(
                               "assets/images/bitcion.png",
                               width: 70,
                               height: 70,
                               fit: BoxFit.cover,
                             ),
                           ),
                           SizedBox(width: 8,),
                           const Text(
                               "This is just test text for\nThis is just test text for posting just\njust test text.",
                           style: TextStyle(
                             fontWeight: FontWeight.bold
                           ),
                           ),
                           IconButton(
                               onPressed: (){},
                               icon: Icon(Icons.favorite,color: Colors.red,)
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
                            child: Image.asset(
                              "assets/images/titan.png",
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8,),
                          const Text(
                            "This is just test text for\nThis is just test text for posting just\njust test text.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.favorite,color: Colors.red,)
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
                            child: Image.asset(
                              "assets/images/water.jpg",
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 8,),
                          const Text(
                            "This is just test text for\nThis is just test text for posting just\njust test text.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.favorite,color: Colors.red,)
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
