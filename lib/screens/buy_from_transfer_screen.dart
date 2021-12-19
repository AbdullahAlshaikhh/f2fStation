import 'package:flutter/material.dart';

class BuyFromTransfer extends StatefulWidget {
  const BuyFromTransfer({Key? key}) : super(key: key);

  @override
  _BuyFromTransferState createState() => _BuyFromTransferState();
}

class _BuyFromTransferState extends State<BuyFromTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Transfer-buy",
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
            const Icon(Icons.search),
          ],
        ),
        elevation: 0,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: FlatButton(
          onPressed: () {},
          height: 45,
          minWidth: 300,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.amber,
          child: const Text(
            "Post buy request",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('USTD'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('BTC'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('ETH'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('BUSD'),
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
                    "Ads",
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
                              Icon(Icons.favorite_border_outlined,color: Colors.red,)
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
                  );
                }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),),
            ),

          ],
        ),
      ),
    );
  }
}
