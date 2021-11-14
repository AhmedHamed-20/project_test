import 'package:flutter/material.dart';

Widget subscribe_chanal_item() {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 75,
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
                  start: 50,
                  top: 50,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 17,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
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
    ),
  );
}
