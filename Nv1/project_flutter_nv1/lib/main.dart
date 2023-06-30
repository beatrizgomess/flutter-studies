import 'package:flutter/material.dart';
import 'package:project_flutter_nv1/views/details_page.dart';
import 'package:project_flutter_nv1/views/home_page.dart';
import 'package:project_flutter_nv1/views/slpash_page.dart';
import 'package:project_flutter_nv1/views/login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
        '/details': (_) => DetailsPage()
      },
    );
  }
}


