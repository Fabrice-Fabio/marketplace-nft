import 'package:flutter/material.dart';
import 'package:hentx/presentation/screens/home_page.dart';
import 'package:hentx/presentation/screens/nft.dart';
import 'package:hentx/presentation/screens/minter.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    Nft(),
    HomePage(),
    Minter(),
  ];

  @override
  void initState() {
    super.initState();
  }

  onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            backgroundColor: Colors.white,
            fixedColor: Colors.red,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.image_outlined, color: Colors.black,),
                label: 'NFT',
                //backgroundColor: Colors.red,
                activeIcon: Icon(Icons.image, color: Colors.red,),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, color: Colors.black,),
                  label: 'Home page',
                  //backgroundColor: Colors.red,
                  activeIcon: Icon(Icons.home, color: Colors.red,)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_rounded, color: Colors.black,),
                  label: 'Mint',
                  activeIcon: Icon(Icons.settings, color: Colors.red,)
              ),
            ],
          ),
        ),
      ),
    );
  }

}
