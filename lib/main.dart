import 'package:e_commerce/route.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
/*
  By PESSIDJO GERMANN
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IZIWAY APP',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
