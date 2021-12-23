import 'package:carousel_slider/carousel_slider.dart';
import 'package:f2f/data/chart_data.dart';
import 'package:f2f/screens/sell_screen.dart';
import 'package:f2f/screens/transfer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'auction_screen.dart';
import 'buy_screen.dart';
import 'community_screen.dart';
import 'courses_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    "https://static.vecteezy.com/system/resources/previews/002/767/248/original/bitcoin-cryptocurrency-concept-technology-futuristic-label-design-luminous-cyber-hologram-sci-fi-digital-futuristic-theme-vector.jpg"
        "https://static.vecteezy.com/system/resources/previews/002/767/248/original/bitcoin-cryptocurrency-concept-technology-futuristic-label-design-luminous-cyber-hologram-sci-fi-digital-futuristic-theme-vector.jpg"
  ];
  final List<ChartData> chartData = [
    ChartData('China', 12, 10, 14, 20),
    ChartData('USA', 14, 11, 18, 23),
    ChartData('UK', 16, 10, 15, 20),
    ChartData('Brazil', 18, 16, 18, 24)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
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
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 115,
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
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: double.infinity,
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/banner1.png",
                          width: double.infinity,
                          height: 220,
                          fit: BoxFit.cover,
                          scale: 1.0,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/banner0.png",
                            width: double.infinity,
                            height: 220,
                            fit: BoxFit.cover),
                      ),
                    ],
                    options: CarouselOptions(
                      aspectRatio: 2.67,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      height: 220,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.easeInCubic,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,

                      // onPageChanged: (index, reason) {
                      //   setState(() {
                      //     _current_slider = index;
                      //   });
                      // }
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: CarouselSlider(
                items: const [
                  Text(
                    '| Potato Media For Technical Solutions |',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '| Potato Media For Technical Solutions |',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),
                  ),
                ],
                options: CarouselOptions(
                  aspectRatio: 2.67,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  height: 20,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.easeInCubic,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  // onPageChanged: (index, reason) {
                  //   setState(() {
                  //     _current_slider = index;
                  //   });
                  // }
                ),

              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Card(
                color: const Color(0xFF29313C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SellScreen()));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/sell.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Align(
                                      heightFactor: 1,
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Sell',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          BuyScreen()));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/buy.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Align(
                                      heightFactor: 1,
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Buy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          TransferScreen()));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/transfer.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Align(
                                      heightFactor: 1,
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Transfer',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          AuctionScreen()));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/auction.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Align(
                                      heightFactor: 1,
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Auction',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CoursesScreen()));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/courses.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Align(
                                      heightFactor: 1,
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Courses',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CommunityScreen()));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/community.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Align(
                                      heightFactor: 1,
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Comm',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/news.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const Align(
                                    heightFactor: 1,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'News',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/advice.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const Align(
                                    heightFactor: 1,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'Advice',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/coins.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const Align(
                                    heightFactor: 1,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'Coins',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/videos.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const Align(
                                    heightFactor: 1,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'Videos',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Card(
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/bitcion.png'),
                                radius: 15,
                              ),
                              Text(
                                '\$64,261,44',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.north,
                                color: Colors.green,
                                size: 20,
                              )
                            ],
                          ),
                          Image.asset('assets/images/chart1.png')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 190,
                  child: Card(
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/titan.png'),
                                radius: 15,
                              ),
                              Text(
                                '\$64,261,44',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.north,
                                color: Colors.green,
                                size: 20,
                              )
                            ],
                          ),
                          Image.asset('assets/images/chart1.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF29313C),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/person0.png')),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Ahmad khaled',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Align(
                              heightFactor: 0.9,
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '4 hours ago',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white60),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          Text(
                            "This is just test text for posting This is just\nThis is just test text for posting\nThis is just test text for posting This is just\nThis is just test text for posting This is just just test\nThis is just test text for posting This is just\n\nThis is just test text for posting\njust test text.",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF29313C),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/profile_photo.png')),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Yaser alnabhan',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Align(
                              heightFactor: 0.9,
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'yesterday 11:21 PM',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white60),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          Text(
                            "This is just test text for posting This is just.\n",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1, right: 1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/banner0.png',
                          height: 150.0,
                          width: 350.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF29313C),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/person2.png')),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Huda almomany',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Align(
                              heightFactor: 0.9,
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'yesterday 06:01 AM',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white60),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          Text(
                            "This is just test text for posting This is just.\n",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1, right: 1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/banner1.png',
                          height: 150.0,
                          width: 350.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
