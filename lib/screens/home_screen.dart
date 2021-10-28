import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';
import 'package:project_test/shared/component/widgets/video_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildHome(),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20.0,
          ),
          itemCount: 15,
        );
      },
    );
  }

  Widget buildHome() {
    return video(
      video_photo_url: 'assets/images/home_photo.jpeg',
      vide_name: 'HONOR 50-واخيرا مميزات وعيوب',
      channel_photo_url: 'assets/images/profile_photo.jpeg',
      channel_name: 'Abdallah Rakha عبدالله رخا ',
      views: '19k',
      publish_time: '16 hours ago',
    );
  }
}
