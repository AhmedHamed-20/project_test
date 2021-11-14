import 'package:flutter/material.dart';
import 'package:project_test/screens/watching_video.dart';
import 'package:project_test/shared/component/widgets/navigate.dart';

Widget video({
  String video_photo_url,
  String vide_name,
  String channel_photo_url,
  String channel_name,
  String views,
  String publish_time,
  BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigate(Screen: watching_vedio(), context: context);
    },
    child: Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image(
            image: AssetImage('$video_photo_url'),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              GestureDetector(
                child: const Icon(
                  Icons.more_vert,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
