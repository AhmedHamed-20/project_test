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
          image: AssetImage('$video_photo_url'),
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
              foregroundImage: AssetImage('$channel_photo_url'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$vide_name',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '$channel_name.',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '$views views .',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '$publish_time',
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
