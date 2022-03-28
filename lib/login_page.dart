import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/blog_page.dart';
import 'package:flutter_blog_navigation/pass_forget.dart';

import 'main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "vipاپلیکیشن سیگنال های ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Image(
                image: AssetImage("images/w.png"),
              ),
              OutlinedButton(

                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  primary: Colors.black,
                ),
                onPressed: () {
                  NavigateToPage(context,BlogPage());
                },
                child: Text(
                  "ورود به حساب",
                  style: TextStyle(fontSize: 16,color: Colors.black,),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('ثبت نام'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(200, 43),
                ),
              ),
              TextButton(
                onPressed: () {
                  NavigateToPage(context, PasswordForget());
                },
                child: Text(
                  "فراموشی رمز عبور",
                ),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void NavigateToPage(BuildContext context,Widget page) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
          return page;
    }));
  }
}
