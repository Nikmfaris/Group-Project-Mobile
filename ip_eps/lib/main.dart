import 'package:flutter/material.dart';
import 'package:ip_eps/pages/home_page.dart';
import 'package:ip_eps/pages/login_page.dart';
import 'package:ip_eps/pages/navigation/ipgeo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),

      //MIGHT IMPLEMENT LATE
      // initialRoute: '/home',
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/home': (context) => HomePage(),
      //   '/login': (context) => LoginPage(),
      //   '/ipgeo': (context) => IpGeoPage(),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
