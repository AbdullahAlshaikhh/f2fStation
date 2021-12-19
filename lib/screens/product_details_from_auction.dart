import 'package:f2f/components/default_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsFromAuction extends StatefulWidget {
  const ProductDetailsFromAuction({Key? key}) : super(key: key);

  @override
  _ProductDetailsFromAuctionState createState() =>
      _ProductDetailsFromAuctionState();
}

class _ProductDetailsFromAuctionState extends State<ProductDetailsFromAuction> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: FlatButton(
          onPressed: () {
            showAlertDialog(context);
          },
          height: 45,
          minWidth: 300,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.amber,
          child: const Text(
            "Join the auction",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                "assets/images/iphone.png",
                height: 280,
                width: 400,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                  top: -200,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.share,
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  " Iphone 13 pro max ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF29313C),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "auction details",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.schedule_outlined,
                                color: Colors.amber,
                                size: 15,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                "continue",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.schedule_outlined,
                                color: Colors.amber,
                                size: 15,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                "ends at:19/11/2021 3:01Pm",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/price.png",
                                  width: 15,
                                  height: 15,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                " price:0.055BTC",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.fmd_good,
                                color: Colors.amber,
                                size: 15,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                " Amman-Khalda",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.bolt,
                                color: Colors.amber,
                                size: 20,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                "type: mobile",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  " information about product",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: SizedBox(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit,sed do eiusmod tempor incididunt ut labore\net dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation\nlaboris nisi ut aliquip ex ea commodo consequat.\nDuis aute irure dolor in reprehenderit in voluptate velit\nesse cillum dolore eu fugiat nulla pariatur.\nExcepteur sint occaecat cupidatat non proident,\nsunt in culpa qui officia deserunt mollit anim id est.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context) {


  Widget confirmButton =  DefaultButton(
    text: "Confirm",
    press: () { Navigator.pop(context);}
  );


  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Join the auction"),
      ],
    ),
    content:
        SizedBox(
          height: 220,
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/price.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  const Text(
                    "start price:0.055BTC",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/price.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  const Text(
                    "current price:0.055BTC",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("The value of your auction"),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(60),
                    ),
                    labelText: 'BTC',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                height: 40,
                minWidth: 200,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.amber,
                child: const Text(
                  "Join the auction",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
    actions: [
      // confirmButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}