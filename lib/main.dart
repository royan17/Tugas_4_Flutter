import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Center(child: Text('Tugas 4 Flutter')),
            backgroundColor: Colors.pink,
            actions: <Widget>[Icon(Icons.search)],
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Image.network(
                  'https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                child: Row(
                  children: [
                    CardPage(),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Text(
                "View Image Mountain",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          )),
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
              color: Colors.white,
              child: Column(children: <Widget>[
                Image.network(
                  'https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  height: 200,
                  width: 185,
                ),
                Text("Gambar 1", style: TextStyle(fontSize: 30)),
              ])),
          Card(
              color: Colors.white,
              child: Column(children: <Widget>[
                Image.network(
                  'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  height: 200,
                  width: 185,
                ),
                Text("Gambar 2",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
              ])),
        ],
      ),
    );
  }
}
