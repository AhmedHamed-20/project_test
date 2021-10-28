import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';
import 'package:project_test/screens/shorts_screen.dart';

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
                children: const [
                  Icon(
                    Icons.cast,
                    color: Colors.black,
                    size: 22.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                    size: 22.0,
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
              if (index != 1) {
                cubit.currentindex = index;
                cubit.changeState();
              } else {
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
