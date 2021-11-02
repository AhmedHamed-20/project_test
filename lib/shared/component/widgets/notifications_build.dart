import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget notificationBuild() => Padding(
  padding: const EdgeInsets.all(4.0),
  child:
  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
    [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: CircleAvatar(
          backgroundColor: Colors.blue[700],
          radius: 2.0,
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      CircleAvatar(
        radius: 18.0,
        backgroundImage:AssetImage('assets/images/profile_photo.jpeg'),
      ),
      SizedBox(
        width: 13.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Abdullah Rakha uploaded: HONOR 50-واخيرا مميزات وعيوب',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              '16 hours ago',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 45.0,
        width: 75.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          image: DecorationImage(
            image: AssetImage('assets/images/home_photo.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        width: 4.0,
      ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 12.0),
         child: Icon(
           Icons.more_vert,
            size: 16.0,),
       ),


    ],
  ),
);