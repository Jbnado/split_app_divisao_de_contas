import 'package:app_divisao_de_contas/pages/intialPages/initial/initial.page.dart';
import 'package:app_divisao_de_contas/pages/intialPages/login/login.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Split',
      initialRoute: 'login',
      routes: {
        'initalPage': ((context) => const InitialPage()),
        'login': ((context) => const LoginPage()),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF001233),
      ),
    ),
  );
}
