import 'package:TestFlutter/Color.dart';
import 'package:flutter/material.dart';
import 'Business.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });

    if (index == 0) {
      print("Tap Home");
    } else if (index == 1) {
      print("Tap Business");
    } else {
      print("Tap School");
    }
  }


  final List<Widget> _children = [
    Business(),
    Business(),
    Business()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Test Flutter", style: TextStyle(color: Colors.white)),
        backgroundColor: PrimaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () => {print("On Press Setting")},
          ),
          IconButton(
              icon: Icon(Icons.lock, color: Colors.white),
              onPressed: () => {print("On Press Setting")})
        ],
        leading: IconButton(icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        elevation: 20,
      ),
      body: _children[_selectIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("School"))
        ],
        currentIndex: _selectIndex,
        selectedItemColor: PrimaryColor,
        onTap: _onItemTap,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("https://i.ibb.co/sbFmnGm/clover-bling-brown-03.jpg")),
              title: Text("M-Girl"),
              subtitle: Text("Made changes to a source file and want to reformat code"),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.grid_on),
            ),
            ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.contacts),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
            )
          ],
        ),
      ),
    );
  }
}
