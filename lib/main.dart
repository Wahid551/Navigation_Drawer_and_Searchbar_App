import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inputpage(),
      //Theme of Widget
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Icon cusicon = Icon(Icons.search);
  Widget cusSearchbar = Text('AppBar');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.indigoAccent,

        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (this.cusicon.icon == Icons.search) {
                  this.cusicon = Icon(Icons.close);
                  this.cusSearchbar = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Text',
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  );
                } else {
                  this.cusicon = Icon(Icons.search);
                  this.cusSearchbar = Text('AppBar');
                }
              });
            },
            icon: cusicon,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        title: cusSearchbar,

        //Extension Bottom of Appbar
        // bottom: PreferredSize(
        //   preferredSize: Size(10.0, 80.0),
        //   child: Container(),
        // ),
      ),
    );
  }
}
