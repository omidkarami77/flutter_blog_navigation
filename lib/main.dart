import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(fontFamily: "Vazir"),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


