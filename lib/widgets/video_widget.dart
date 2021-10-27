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
      Container(
        height: 200.0,
        width: 360.0,
        child: Image(
          image: AssetImage(video_photo_url),
        ),
      ),
      SizedBox(
        height: 8.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              foregroundImage: AssetImage(channel_photo_url),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vide_name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${channel_name} .',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '${views} views .',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      publish_time,
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
