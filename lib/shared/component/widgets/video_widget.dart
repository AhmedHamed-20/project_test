import 'package:flutter/material.dart';

Widget video({
  String video_photo_url,
  String vide_name,
  String channel_photo_url,
  String channel_name,
  String views,
  String publish_time,
}) {
  return Column(
    children: [
      SizedBox(
        height: 200.0,
        width: double.infinity,
        child: Image(
          image: AssetImage('assets/images/home_photo.jpeg'),
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              foregroundImage: AssetImage('assets/images/profile_photo.jpeg'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HONOR 50-واخيرا مميزات وعيوب',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Abdallah Rakha عبدالله رخا  .',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '19k views .',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '16 hours ago',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
