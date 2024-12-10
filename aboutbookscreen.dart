import 'package:flutter/material.dart';

class AboutBookScreen extends StatelessWidget {
  final String title;
  final String author;
  final int year;
  final String language;
  final int pages;
  final String about;
  final String price;

  AboutBookScreen({
    required this.title,
    required this.author,
    required this.year,
    required this.language,
    required this.pages,
    required this.about,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40), // Отступ для верхней панели
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/book_image.png', // Замените на реальный путь
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              author,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '$year',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Year of release'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        language,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Language'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '$pages',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Pages'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        about,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Логика покупки
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Buy for $price'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Пример BookScreen для связи:
class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books List'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Harry Potter'),
            subtitle: Text('J.K. Rowling'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutBookScreen(
                    title: 'Harry Potter',
                    author: 'J.K. Rowling',
                    year: 2015,
                    language: 'ENG',
                    pages: 543,
                    about:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                    price: '4700 KZT',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
