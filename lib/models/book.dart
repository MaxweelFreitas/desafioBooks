class Book{
  String imgPath;
  String title;
  String author;
  double price;
  double rate;
  int vote;

Book({this.imgPath,this.title,this.author,this.price,this.rate,this.vote});

 String get getTitle => title;

 set setTitle(String title) => this.title = title;

 String get getAuthor => author;

 set setAuthor(String author) => this.author = author;

 double get getPrice => price;

 set setPrice(double price) => this.price = price;

 double get getRate => rate;

 set setRate(double rate) => this.rate = rate;

 int get getVote => vote;

 set setVote(int vote) => this.vote = vote;

}