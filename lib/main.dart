import 'package:flutter/material.dart';

import 'pages/intialPages/initial/initial_page.dart';
import 'pages/intialPages/login/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Split',
      initialRoute: '/initialPage',
      routes: {
        '/initialPage': ((context) => const InitialPage()),
        '/login': ((context) => const LoginPage()),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF001233),
        fontFamily: 'Montserrat',
      ),
    ),
  );
}
