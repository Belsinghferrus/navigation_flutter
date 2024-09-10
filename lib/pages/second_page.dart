import 'package:flutter/material.dart';
import 'package:fundamentals/pages/first_page.dart';
import 'package:fundamentals/pages/third_page.dart';

class SecondPage extends StatefulWidget {
   SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedindex = 0;


  void _navigateBottomBar (int index){
    setState(() {
      _selectedindex = index;
    });
  }

  final List _pages = [
    FirstPage(),
    SecondPage(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Page"),
      ),
      body: _pages[_selectedindex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),

          //profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),

          //settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings'
          ),
        ],
      ),
    );
  }
}
