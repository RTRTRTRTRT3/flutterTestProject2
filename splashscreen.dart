import 'package:flutter/material.dart';
import 'registerscreen.dart'; // Импортируем страницу регистрации

void main() {
  runApp(SplashScreen());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Можно задать цвет фона, например, белый
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип
            Image.asset('assets/logo.png',
                width: 200), // Убедитесь, что логотип в папке assets

            SizedBox(height: 20),

            // Кнопка "Начать"
            ElevatedButton(
              onPressed: () {
                // Переход на страницу регистрации
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Цвет кнопки
                foregroundColor: Colors.white, // Цвет текста кнопки
                shape: CircleBorder(), // Округлая форма кнопки
                padding: EdgeInsets.all(20),
              ),
              child: Text('Начать'),
            ),
          ],
        ),
      ),
    );
  }
}
