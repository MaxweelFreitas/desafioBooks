import 'package:desafio_books/models/book.dart';
import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<Book> listH = [
      Book(
        imgPath:
            'https://github.com/MaxweelFreitas/desafioBooks/blob/master/imgs/harry_potter.png',
        title: 'Harry Potter and the Goblet of Fire',
        author: 'J.K. Rowling',
        price: 19.99,
        rate: 4.8,
        vote: 2390,
      ),
      Book(
        imgPath:
            'https://github.com/MaxweelFreitas/desafioBooks/blob/master/imgs/jungle_book.png',
        title: 'The Jungle Book',
        author: 'Rudyard Kipling',
        price: 19.99,
        rate: 4.8,
        vote: 2390,
      ),
      Book(
        imgPath:
            'https://github.com/MaxweelFreitas/desafioBooks/blob/master/imgs/starwars.png',
        title: 'Star Wars Return of the Jedi',
        author: 'George Lucas',
        price: 19.99,
        rate: 4.8,
        vote: 2390,
      ),
    ];

    var listViewH = ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: listH.length,
      itemBuilder: (BuildContext context, int index) {

        Book book = listH[index];

        return Container(
          height: 100,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: book.imgPath,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        );
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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 1,
              child: listViewH,
            ),
            Flexible(
              flex: 5,
              child: Container(
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
