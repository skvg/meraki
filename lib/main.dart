import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meraki',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Meraki - TechFest'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get image => null;
  void logo(){
    print("logo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lightbulb_outline),
            tooltip: "logo",
            onPressed: logo,
          ),
        ],
        title: Text(
          widget.title,
          ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.face),
              title: Text("MERAKI - TechFest"),
              onTap: (){
                //change the applications state
                print("surendra");
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text(
              'Indian Institute of Information Technology, Una',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold ,
              ),
              textAlign: TextAlign.center,
            ),
            new Image.asset(
               "assets/images/logo.png"
            ),
            Text(
               'Meraki is a Technical festival at indian institute of information technology, una.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text("Events")),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text("About Us")),
        ]
      ),
    );
  }
}
