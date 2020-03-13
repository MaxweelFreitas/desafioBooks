import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'BOOKLY',
            style: TextStyle(
                //fontFamily: ,
                ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
