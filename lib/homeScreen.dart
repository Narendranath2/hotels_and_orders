import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hotels_and_orders/contentScreen.dart';
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
        backgroundColor: Colors.deepPurple[900],
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
            foodType("Veg"),
            foodType("Non-Veg"),
            foodType("Soft Drinks"),
          ],
          staggeredTiles: [
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
            StaggeredTile.extent(1, 200.0),
          ],
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            Image.asset(
              'images/waiter.png',
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

  Widget foodType(String type) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => contentScreen(type)));
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 20,
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: new Image.asset('images/plate_icon.png'),
                  ),
                  Container(
                    height: 20,
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text(type, style: new TextStyle(color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}