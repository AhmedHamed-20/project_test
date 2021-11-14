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
      color: Colors.grey[500],
    ),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[500],
      ),
      child: Text(
        isUpperCase ? text.toString().toUpperCase() : text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget reelsSideIcons() {
  return Container(
    width: 50,
    height: 250,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
        Column(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.white,
            ),
            Text(
              '71k',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.thumb_down,
              color: Colors.white,
            ),
            Text(
              'Dislike',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.insert_comment,
              color: Colors.white,
            ),
            Text(
              '500',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.reply,
              color: Colors.white,
            ),
            Text(
              'SHARE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
