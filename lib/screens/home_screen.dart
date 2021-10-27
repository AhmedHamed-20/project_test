import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
              itemBuilder: (context, index)=> buildHome(),
              separatorBuilder: (context, index)=> SizedBox(
                height: 20.0,
              ),
              itemCount: 15);
        },

    );
  }
  Widget buildHome() => Column(
    children:
    [
      Container(
        height: 200.0,
        width: 360.0,
        child: Image(
          image: AssetImage('assets/images/home_photo.jpeg'),
        ),

      ),
      SizedBox(
        height:8.0 ,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children:
          [
            CircleAvatar(
              radius: 20.0,
              foregroundImage: AssetImage('assets/images/profile_photo.jpeg'),

            ),
            SizedBox(
              width: 10.0 ,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  'HONOR 50 - وأخيرا مميزات وعيوب',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(

                  children:
                  [
                    Text(
                      'Abdallah Rakha عبد الله رخا .',
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
