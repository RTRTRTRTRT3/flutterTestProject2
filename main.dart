import 'package:flutter/material.dart';
import 'registerscreen.dart';
import 'bookscreen.dart';
import 'aboutbookscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Начальный маршрут
      onGenerateRoute: (settings) {
        if (settings.name == '/aboutBook') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => AboutBookScreen(
              title: args['title'],
              author: args['author'],
              year: args['year'],
              language: args['language'],
              pages: args['pages'],
              about: args['about'],
              price: args['price'],
            ),
          );
        }
        return null;
      },
      routes: {
        '/': (context) => RegisterScreen(),
        '/book': (context) => BookScreen(),
      },
    );
  }
}
