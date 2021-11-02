import 'package:flutter/material.dart';
import 'package:project_test/shared/component/widgets/notifications_build.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),),
        actions:
        [
          IconButton(
            icon: Icon(Icons.cast),
            iconSize: 20.0,
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: ListView.separated(itemBuilder:
          (context,index)=> notificationBuild(),
        separatorBuilder:(context,index)=>  SizedBox(
          height: 20.0 ,
        ),
        itemCount: 10,
      ),
    );
  }
}
