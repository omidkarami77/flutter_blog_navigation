import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/custom_widget/post_widget.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ["images/a.png", "images/c.png", "images/r.png", "images/s.png"];
    var title = ["Alchemy", "cosmos", "Ripple", "Safemoon"];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "vip اخبار و سیگنال های ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < list.length; i++)
                  (getBlogPost(list[i], title[i])),

                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "خروج از حساب",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  style: TextButton.styleFrom(primary: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
