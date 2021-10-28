import 'package:flutter/material.dart';

Widget default_Button({
  @required VoidCallback onPressed,
  String text,
  bool isUpperCase = false,
  double height = 50,
  double width = double.infinity,
  double radius = 10,
}) {
  return Container(
    height: height,
    width: width,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: Colors.grey[400],
    ),
    child: MaterialButton(
      onPressed: onPressed,
      child: Text(
        isUpperCase ? text.toString().toUpperCase() : text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}
