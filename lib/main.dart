import 'package:flutter/material.dart';
import 'package:projet_listes/orientation/orientation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data:
          const MediaQueryData(), // Vous pouvez personnaliser les données selon les besoins de votre application
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'La Savoie',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const OrientationWidget(),
      ),
    );
  }
}
