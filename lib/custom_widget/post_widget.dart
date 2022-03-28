import 'package:flutter/material.dart';

Widget getBlogPost(String imageAddress,String title) {

  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage(imageAddress),
        ),
      ),
      SizedBox(
        height: 10,
      ),

      Text(



        "برای 14 آبان" + " ${title} : سیگنال خرید  ",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "فروش روی 12.560",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.price_check,
            size: 20,
            color: Colors.green,
          ),
          Text(
            "خرید روی 12.365",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
      Container(
        width: 300,
        child: Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ),
    ],
  );
}
