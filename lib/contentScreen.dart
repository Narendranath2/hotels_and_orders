import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: contentScreen(""),
    );
  }
}


class contentScreen extends StatefulWidget {
  String tittle = "";

  contentScreen(String myTittle) {
    this.tittle = myTittle;
  }
  @override
  _contentScreenState createState() => _contentScreenState(this.tittle);

}

class _contentScreenState extends State<contentScreen> {
  _contentScreenState(String myTitle) {
    this.title = myTitle;
  }

  String title = "Content";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple[900],
          title: Text(title),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Item"),
                  Text("Price"),
                  Text("Qty"),
                ],
              ),
            ],
          ),
        )
    );
  }

  Widget itemFormat(String itemName, String itemPrice) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(itemName,
            style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          Text(itemPrice,
            style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_upward, size: 40,),
          Icon(Icons.arrow_downward, size: 40,),
          Text("2",
            style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
