import 'package:f2f/screens/home_screen.dart';
import 'package:f2f/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigate extends StatefulWidget {
  const BottomNavigate({Key? key}) : super(key: key);

  @override
  _BottomNavigateState createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const WishlistScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
              // color: Color(0xFF3A5A98),
            ),
            label: 'home',
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/wallet.png"),
              // color: Color(0xFF3A5A98),
            ),
            label: 'wallet',
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/promotions.png"),
              // color: Color(0xFF3A5A98),
            ),
            label: 'promotions',
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/heart.png"),
              // color: Color(0xFF3A5A98),
            ),
            label: 'favorite',
            // backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,

        //  fixedColor: Colors.purpleAccent,
        selectedFontSize: 12.0,
        selectedLabelStyle: TextStyle(color: Colors.amber),
        unselectedFontSize: 12.0,
      ),
    );
  }
}
