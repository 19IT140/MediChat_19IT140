import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:medichat/Blog.dart';
import 'package:medichat/Settings.dart';
import 'package:medichat/Storage.dart';
import 'ChatBot.dart';
import 'home_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class screens extends StatefulWidget {
  @override
  _screensState createState() => _screensState();
}

class _screensState extends State<screens> {
  int selectPage=0;
  List screen=[home_page(),storage(),chatbot(),blog(),settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  screen[selectPage],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: selectPage,
    onItemSelected: (int index){
          setState(() {
            selectPage=index;
          });
    },
    items: <BottomNavyBarItem>[
      BottomNavyBarItem(
          icon: Icon(Icons.home),
          title:Text('Home'),
          activeColor: Colors.blueAccent,
        inactiveColor: Colors.black,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.folder),
        title:Text('Storage'),
        activeColor: Colors.deepOrangeAccent,
        inactiveColor: Colors.black,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.chat),
        title:Text('Dr.'),
        activeColor: Colors.green,
        inactiveColor: Colors.black,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.post_add),
        title:Text('Blog'),
        activeColor: Colors.redAccent,
        inactiveColor: Colors.black,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.settings),
        title:Text('Settings'),
        activeColor: Colors.deepPurpleAccent,
        inactiveColor: Colors.black,
      ),
        ],
    /*items: [
    TabItem(icon: Icons.home,title: 'Home'),
    TabItem(icon: Icons.folder,title: 'Storage'),
    TabItem(icon: Icons.chat,title: 'Dr.'),
    TabItem(icon: Icons.post_add,title: 'Blog'),
    TabItem(icon: Icons.settings,title: 'Settings'),
    ],
    initialActiveIndex: selectPage,
    onTap: (int index){
    setState(() {
    selectPage=index;
    });
    },*/
    ),
    );
  }
}
