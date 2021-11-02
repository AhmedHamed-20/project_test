import 'package:flutter/material.dart';

Widget subscribe_chanal_item() {
  return Container(
    width: 80,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: const [
            CircleAvatar(
              radius: 35,
              foregroundImage: AssetImage('assets/images/profile_photo.jpeg'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 51,
                top: 48,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 11,
                child: Icon(
                  Icons.circle,
                  color: Colors.blue,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Abdallah Mansour',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.grey[700],
          ),
        ),
      ],
    ),
  );
}
