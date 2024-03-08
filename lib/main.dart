import 'package:flutter/material.dart';
import 'package:flutter_full_tutorial/Drawer/my_drawer.dart';

import 'package:flutter_full_tutorial/Pages/json_online_mapping.dart';
import 'package:flutter_full_tutorial/Pages/login_page.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      routes: {
        "/": (context) => MyDrawer(),
        // "/": (context) => JsonOnline(),
        // "/": (context) => HomePage(),
        "/Home": (context) => MyHomePage(),
      },
    );
  }
}
