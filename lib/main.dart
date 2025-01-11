import 'package:catalyst/UI/Screens/Home/home.dart';
import 'package:flutter/material.dart';

import 'di.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalyst',
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName : (_) => const HomePage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
