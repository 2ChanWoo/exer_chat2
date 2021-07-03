import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupSigninScreen extends StatefulWidget {
  @override
  _SignupSigninScreenState createState() => _SignupSigninScreenState();
}

class _SignupSigninScreenState extends State<SignupSigninScreen> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            width: 300.w,
            height: 500.h,
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(_isLogin ? 'Sign In!' : 'Sign Up!'),
          )
        ],
      ),
    );
  }
}
