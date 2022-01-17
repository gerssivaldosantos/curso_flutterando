import 'package:flutter/material.dart';

Widget blueButtonOutlined(
    context, String label, fontSize, height, width, Function fun) {
  return Container(
      child: ElevatedButton(
    onPressed: () {
      fun();
    },

    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.blue, width: 1.0)),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
    //set the background colors of the button and the text
    child: SizedBox(
      width: MediaQuery.of(context).size.width * width,
      height: height,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: fontSize, color: Colors.blue),
        ),
      ),
    ),
  ));
}
