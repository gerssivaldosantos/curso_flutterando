import 'package:flutter/material.dart';

Widget blueButton(
    context, String label, fontSize, height, width, Function fun) {
  return Container(
      child: ElevatedButton(
    onPressed: () {
      fun();
    },

    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
    //set the background colors of the button and the text
    child: SizedBox(
      width: MediaQuery.of(context).size.width * width,
      height: height,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    ),
  ));
}
