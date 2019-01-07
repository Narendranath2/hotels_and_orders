import 'package:flutter/material.dart';
import 'package:hotels_and_orders/homeScreen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startPage(),
    );
  }
}

class startPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 50.0,
              ),

              Image.asset('images/plate_icon.png'),
              Container(
                height: 50.0,
              ),
              Text("Hotel Premium",
                  style: new TextStyle(
                      color: Colors.deepPurple[900],
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold)),
              Container(
                height: 80.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: RaisedButton(
                    color: Colors.yellow[600],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Start", style: new TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    }
                ),
              ),
            ],
          ),
        ));
  }
}

