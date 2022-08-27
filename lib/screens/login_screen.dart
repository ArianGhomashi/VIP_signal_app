import 'package:flutter/material.dart';
import 'package:vip_signal_app/screens/password_recovery.dart';
import 'package:vip_signal_app/screens/signals_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'VIPورود به حساب سیگنال',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Image.asset('images/w.png'),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      width: 2, color: Colors.black, style: BorderStyle.solid),
                  minimumSize: Size(200, 43),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignalsScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(200, 43),
                ),
                onPressed: () {},
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PasswordRecoveryScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'فراموشی رمز عبور',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
