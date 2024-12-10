import 'package:flutter/material.dart';
import 'bookscreen.dart'; // Импортируем экран книги

void main() {
  runApp(RegisterScreen());
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('РЕГИСТРАЦИЯ'),
        backgroundColor: Color(0xFF1D3557), // Темно-синий цвет
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Заголовок страницы
            Text(
              'РЕГИСТРАЦИЯ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),

            // Поля ввода
            TextField(
              decoration: InputDecoration(
                labelText: 'Имя',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Фамилия',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Электронная почта',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Номер телефона (+7)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Создайте пароль',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Повторите пароль',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),

            // Кнопка регистрации
            ElevatedButton(
              onPressed: () {
                // Переход на экран BookScreen
                Navigator.pushReplacementNamed(context, '/book');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF457B9D), // Голубой цвет для кнопки
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Ссылка на экран входа
            TextButton(
              onPressed: () {
                // Логика для перехода на экран входа
                Navigator.pop(context);
              },
              child: Text(
                'У вас уже есть аккаунт? Войти',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF457B9D), // Голубой цвет для текста
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF1D3557), // Темно-синий фон
    );
  }
}
