import 'package:chirzelle_sernadilla/Screens/Dashboard.dart';
import 'package:chirzelle_sernadilla/Screens/History.dart';
import 'package:chirzelle_sernadilla/Screens/Orders.dart';
import 'package:chirzelle_sernadilla/Screens/UserPage.dart';
import 'package:chirzelle_sernadilla/Screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const Dashboard(),
        '/orders': (context) => const Orders(),
        '/user': (context) => const UserPage(),
        '/history': (context) => const History(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboarding(),
    );
  }
}
