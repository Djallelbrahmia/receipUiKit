import 'package:flutter/material.dart';
import 'package:recipesapp/screen/home_screen.dart';
import 'package:recipesapp/screen/on_boarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'SFProText',
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.orange)),
      home: HomeScreen(),
    );
  }
}
