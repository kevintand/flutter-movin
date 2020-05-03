import 'dart:developer';

import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOVIN TIME',
      home: MyHomePage(title: 'MOVIN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;
  HomePage homePage;
  SearchPage searchPage;
  SettingPage settingPage;
  List<Widget> pages;
  Widget currentPage;
  
  @override
  void initState() {
    homePage = new HomePage();
    searchPage = new SearchPage();
    settingPage = new SettingPage();
    pages = [homePage, searchPage, settingPage];
    currentPage = homePage;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: currentPage,
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.black,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.white,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: currentTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              title: Text('More'),
            ),
          ],
          fixedColor: Colors.white,
          onTap: (int index) {
            setState(() {
              currentTab = index;
              currentPage = pages[index];
            });
          },
      ),
    )
    );
  }
}
