import 'package:flutter/material.dart';
import 'package:vip_signal_app/screens/login_screen.dart';
import 'package:vip_signal_app/screens/signals_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: LoginScreen(),
    );
  }
}
