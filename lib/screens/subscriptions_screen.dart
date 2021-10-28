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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 20,
                    start: 10.0,
                  ),
                  child: Container(
                    color: Colors.grey[50],
                    height: 115,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (Context, index) =>
                                subscribe_chanal_item(),
                            separatorBuilder: (Context, index) => SizedBox(
                              width: 10,
                            ),
                            itemCount: 10,
                          ),
                        ),
                        Container(
                          width: 65,
                          height: double.infinity,
                          color: Colors.grey[50],
                          child: TextButton(
                            child: Text(
                              'ALL',
                              style: TextStyle(
                                fontSize: 20,
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
                Container(
                  height: 70,
                  color: Colors.grey[50],
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          default_Button(
                            onPressed: () {},
                            text: 'ALL',
                            height: 40,
                            width: 70,
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Today',
                            height: 40,
                            width: 100,
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Continue Watching',
                            height: 40,
                            width: 200,
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'UnWatching',
                            height: 40,
                            width: 150,
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Live',
                            height: 40,
                            width: 70,
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Posts',
                            height: 40,
                            width: 90,
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          default_Button(
                            onPressed: () {},
                            text: 'Setting',
                            height: 40,
                            width: 120,
                            radius: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => video(),
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
}
