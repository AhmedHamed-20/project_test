import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';
import 'package:project_test/screens/notifications_screen.dart';
import 'package:project_test/screens/shorts_screen.dart';
import 'package:project_test/shared/component/widgets/navigate.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = Appcubit.get(context);
    return BlocConsumer<Appcubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 110,
              height: 100,
            ),
            actions: [
              Row(
                children:
                [
                  Icon(
                    Icons.cast,
                    color: Colors.black,
                    size: 22.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                    onPressed:()
                    {
                      Navigate(Screen: NotificationsScreen(),context: context);
                    },
                    icon: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                    size: 22.0,
                  ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 22.0,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            onTap: (index) {
              //check if index not 1 so use bottomnavBar default navigation
              if (index != 1) {
                cubit.currentindex = index;
                //to change state and open another screen
                cubit.changeState();
              } else {
                //else use my navigator to open shorts screen like a page not part of bottomnavBar
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShortsScreen()),
                );
              }
            },
            currentIndex: cubit.currentindex,
            items: cubit.bottomNavItem,
          ),
          body: cubit.screen[cubit.currentindex],
        );
      },
    );
  }
}
