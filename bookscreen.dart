import 'package:flutter/material.dart';

void main() {
  runApp(BookScreen());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => BookScreen(),
      },
    );
  }
}

class BookScreen extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'Harry Potter',
      'author': 'J.K. Rowling',
      'image': 'assets/book1.jpg',
    },
    {
      'title': 'Percy Jackson',
      'author': 'Rick Riordan',
      'image': 'assets/book2.jpg',
    },
    {
      'title': 'The Hobbit',
      'author': 'J.R.R. Tolkien',
      'image': 'assets/book3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books Screen'),
        backgroundColor: Color(0xFF1D3557),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('All Books',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {
                    // Дополнительная функциональность
                  },
                  child: Text('See All'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: books.isNotEmpty
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BookDetailsScreen(book: books[index])),
                            );
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            elevation: 5,
                            child: Column(
                              children: <Widget>[
                                Image.asset(books[index]['image']!,
                                    width: 100, height: 150),
                                SizedBox(height: 8),
                                Text(books[index]['title']!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(books[index]['author']!,
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text('No books available!',
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final Map<String, String> book;

  BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['title']!),
        backgroundColor: Color(0xFF1D3557),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Добавьте логику для шаринга книги
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(book['image']!, width: 200),
            ),
            SizedBox(height: 20),
            Text(book['title']!,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Author: ${book['author']!}',
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Добавьте логику для покупки книги
              },
              child: Text('Buy Now'),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF457B9D)),
            ),
          ],
        ),
      ),
    );
  }
}
