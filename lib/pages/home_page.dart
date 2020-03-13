import 'package:desafio_books/models/book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    List<Book> listH = [
      Book(
        title:'Harry Potter and the Goblet of Fire',
        author:'J.K. Rowling',
        price:19.99,
        rate:4.8,
        vote: 2390,
      ),
      Book(
        title:'The Jungle Book',
        author:'Rudyard Kipling',
        price:19.99,
        rate:4.8,
        vote: 2390,
      ),
      Book(
        title:'Star Wars Return of the Jedi',
        author:'George Lucas',
        price:19.99,
        rate:4.8,
        vote: 2390,
      ),
    ];

    ListView listViewH = ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return;
      },
    );

    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            height: 10,
            child: Image(image: AssetImage('assets/lg_challenge_lg.png')),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              listViewH,
            ],
          ),
        ),
      ),
    );
  }
}
