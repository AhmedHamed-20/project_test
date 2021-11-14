import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';
import 'package:flutter/material.dart';
import 'package:project_test/shared/component/component.dart';
import 'package:project_test/shared/component/widgets/subscribe_chanal_item.dart';
import 'package:project_test/shared/component/widgets/video_widget.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 20,
                    start: 10.0,
                  ),
                  child: Container(
                    color: Colors.grey[50],
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                subscribe_chanal_item(),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 10,
                            ),
                            itemCount: 10,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: double.infinity,
                          color: Colors.grey[50],
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'ALL',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    thickness: 3,
                    color: Colors.grey[200],
                  ),
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  color: Colors.grey[50],
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 10.0, end: 10),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          default_Button(
                            onPressed: () {},
                            text: 'ALL',
                            height: 35,
                            width: 60,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Today',
                            height: 35,
                            width: 80,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Continue Watching',
                            height: 35,
                            width: 180,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'UnWatching',
                            height: 35,
                            width: 130,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Live',
                            height: 35,
                            width: 70,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Posts',
                            height: 35,
                            width: 90,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'SETTING',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          ),

                          /* default_Button(
                            onPressed: () {},
                            text: 'Setting',
                            height: 35,
                            width: 120,
                            radius: 20,
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        subscribtion_vedio_item(context),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20.0,
                    ),
                    itemCount: 15,
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget subscribtion_vedio_item(BuildContext context) {
    return video(
      context: context,
      video_photo_url: 'assets/images/home_photo.jpeg',
      vide_name: 'HONOR 50-واخيرا مميزات وعيوب',
      channel_photo_url: 'assets/images/profile_photo.jpeg',
      channel_name: 'Abdallah Rakha عبدالله رخا ',
      views: '19k',
      publish_time: '16 hours ago',
    );
  }
}
