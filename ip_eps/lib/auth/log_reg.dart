import 'package:flutter/material.dart';
import 'package:ip_eps/pages/login_page.dart';
import 'package:ip_eps/pages/register_page.dart';
import 'package:lottie/lottie.dart';

class LogReg extends StatefulWidget {
  const LogReg({super.key});

  @override
  State<LogReg> createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> {
//initial page - login page
  bool showLogin = true;

//toggle between login and register
  void togglePage() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginPage(onTap: togglePage);
    } else {
      return RegisterPage(onTap: togglePage);
    }
  }
}
