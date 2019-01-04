import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Container(
        color: Colors.deepPurple[900],
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          children: <Widget>[
            foodType("Starters"),
            foodType("Tiffens"),
            foodType("Drinks"),
            foodType("Salads"),
            foodType("Juices"),
            foodType("Veg Rice Items"),
            foodType("Non-Veg Rice Items"),
          ],
          staggeredTiles: [
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
          ],
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            Image.asset(
              'images/servingboy.jpg',
            ),
            Divider(
              color: Colors.deepPurple[900],
            ),
            ListTile(
              title: Text("Feedback",
                  style: new TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
            ),
            Divider(
              color: Colors.deepPurple[900],
            ),
            ListTile(
              title: Text("Track Orders",
                  style: new TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
            ),
            Divider(
              color: Colors.deepPurple[900],
            ),
            ListTile(
              title: Text("Bag",
                  style: new TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
            ),
            Divider(
              color: Colors.deepPurple[900],
            ),
            ListTile(
              title: Text("Special Offers",
                  style: new TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
            ),
            Divider(
              color: Colors.deepPurple[900],
            ),
            ListTile(
              title: Text("Register Complaint",
                  style: new TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Container foodType(String type) {
    return Container(
      child: GestureDetector(
        onTap: () {
          print("You tapped  $type");
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 50.0,
          color: Colors.white,
          shadowColor: Colors.grey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Text(
                    type,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
