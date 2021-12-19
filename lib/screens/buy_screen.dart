import 'package:flutter/material.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Buy",
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
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: Card(
                        color: const Color(0xFF29313C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/images/person0.png",
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Expanded(
                                      flex: 5,
                                      child: Text(
                                        "Ahmad khaled",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Image.asset(
                                      "assets/images/rating.png",
                                      color: Colors.amber,
                                      height: 75,
                                      width: 75,
                                    ),
                                    // Text('processing'),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/images/price.png",
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text('Price: 58.69 JOD'),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/images/quantity.png",
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text('Quantity: 589621'),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/images/price.png",
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text('Select: 120-75'),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/yellow_bar.png",
                                    width: 10,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text('F2F'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Image.asset(
                                    "assets/images/green_bar.png",
                                    width: 10,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text('BD'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Image.asset(
                                    "assets/images/blue_bar.png",
                                    width: 10,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Icon(Icons.directions_car),
                                  Spacer(),
                                  FlatButton(
                                    onPressed: () {},
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text('Buy'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
