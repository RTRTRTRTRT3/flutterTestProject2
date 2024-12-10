Book App README

Overview  
This is a simple Flutter app that displays a list of books with images, titles, and authors. Users can tap on a book to view more details. The app features a main screen that displays books in a grid layout, and a detail screen for each book. (I begin to learn more about programming mobile apps, I find it truly interesting for me, I continue learning more)

Features  
- Book List: Displays a list of books with titles, authors, and images in a grid format.
- Book Details: When a user taps on a book, they are directed to a detailed screen with more information about the book.
- Navigation: Uses Flutter’s `Navigator` for transitioning between screens.
- Assets: Displays book images loaded from the app’s assets.

Setup  

Prerequisites
- Flutter installed (version 3.5.4 or higher).
- An IDE for Flutter development (e.g., Android Studio or Visual Studio Code).

Installing Dependencies  
1. Clone or download the project files.
2. In the project directory, run the following command to install dependencies:
```
flutter pub get
```
3. Ensure that images are correctly placed in the `assets` directory (`assets/book1.jpg`, `assets/book2.jpg`, `assets/book3.jpg`).

File Structure  
```
/lib
  /main.dart  # Main entry point of the application
/assets
  /book1.jpg  # Image for book 1
  /book2.jpg  # Image for book 2
  /book3.jpg  # Image for book 3
```

Assets Configuration  
Declare the assets in the `pubspec.yaml` file:
```yaml
flutter:
  assets:
    - assets/book1.jpg
    - assets/book2.jpg
    - assets/book3.jpg
```

Running the App  
1. Open the project in your IDE.
2. Run the app using `flutter run` or your IDE's run tools.

Screens

BookScreen  
This screen displays a grid of books with each book shown as a `Card` widget containing an image, title, and author. Tapping a book will navigate to the `BookDetailsScreen`.

BookDetailsScreen  
This screen shows detailed information about the selected book, including the image, title, and author. A `Buy Now` button is present (though currently non-functional). Navigation to this screen is handled by Flutter's `Navigator.push`.

Common Issues & Solutions

Issue: No Directionality Widget Found  
Error Message:  
```
No Directionality widget found. Scaffold widgets require a Directionality widget ancestor.
```

Cause: This happens when a `Scaffold` widget is not wrapped in a `MaterialApp` or `WidgetsApp`. The `MaterialApp` widget adds `Directionality` to the app to handle text direction.

Solution:  
Ensure `MaterialApp` is the root widget of your app. If testing a specific screen, ensure proper wrapping with `Directionality`.

Example:
```dart
Directionality(
  textDirection: TextDirection.ltr,  // Specify text direction
  child: YourWidget(),
);
```

Issue: Assets Not Displaying  
Solution:  
1. Ensure the assets are correctly listed in `pubspec.yaml`.
2. Verify the paths to the images are correct.
3. Run `flutter pub get` to make sure assets are loaded.

Contributing  
Feel free to submit a pull request or open an issue if you encounter any problems or have suggestions.

License  
This project is open-source and available under the MIT License. See the LICENSE file for more details.
