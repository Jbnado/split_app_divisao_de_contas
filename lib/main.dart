import 'package:flutter/material.dart';

import 'pages/intial_pages/initial/initial_page.dart';
import 'pages/intial_pages/sign_up/sign_up_page.dart';
import 'pages/intial_pages/sign_in/sign_in_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Split',
      initialRoute: '/initialPage',
      routes: {
        '/initialPage': ((context) => const InitialPage()),
        '/login': ((context) => const SignInPage()),
        '/cadastrar': ((context) => const SignUpPage()),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF001233),
        fontFamily: 'Montserrat',
      ),
    ),
  );
}
