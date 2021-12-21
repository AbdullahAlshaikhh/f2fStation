import 'package:flutter/material.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Courses",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {},
                    // color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('All courses'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    // color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Programming courses'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    // color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Design courses'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    // color: const Color(0xFF29313C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Marketing courses'),
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 5,
                  itemBuilder:(BuildContext context,int index){
                    return Padding(
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
                                      "assets/images/python.png",
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 8,),
                                  Column(
                                    children:  [
                                      const Text(
                                        "Python course full guide master",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Row(
                                        children:  [
                                          const Icon(Icons.schedule_outlined,color: Colors.white,size: 15,),
                                          const Text(
                                            "50 Hours",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(15),
                                            child: Image.asset(
                                              "assets/images/price.png",
                                              width: 10,
                                              height: 10,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          const Text(
                                            "0.055BTC",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [

                                        ],
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: (){},
                                      icon: const Icon(Icons.favorite,color: Colors.red,)
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              )
                            ],
                          ),
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
