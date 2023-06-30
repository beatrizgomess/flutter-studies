import 'package:flutter/material.dart';
import 'package:flutter_nv1_basic/trabalhandoComRotas/two_page.dart';
import 'package:flutter_nv1_basic/views/work_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => WorkApi(),
        '/twoPage': (_) => const TwoPage(),
      },
    );
  }
}
