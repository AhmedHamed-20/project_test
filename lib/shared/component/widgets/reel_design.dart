import 'package:flutter/material.dart';
import 'package:project_test/shared/component/component.dart';

Widget reel_design(BuildContext context) {
  return Container(
    child: Stack(
      children: [
        Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1580820267682-426da823b514?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXQlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: reelsSideIcons(),
          right: 12,
          bottom: 5,
        ),
      ],
    ),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.75,
  );
}
