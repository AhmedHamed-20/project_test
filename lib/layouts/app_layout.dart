import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key key}) : super(key: key);
///////////////test hunter////
  @override
  Widget build(BuildContext context) {
    var cubit = Appcubit.get(context);
    return BlocConsumer<Appcubit, AppStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Image(
              image: AssetImage('assets/images/logo.png'),
              width: 110,
              height: 100,
            ),
            actions: [
              Row(
                children: [
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
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            onTap: (index) {
              cubit.changBottomnavScreen(index);
            },
            currentIndex: cubit.currentindex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.movie_creation_outlined),
                label: 'Shorts',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.subscriptions_outlined),
                label: 'Subscriptions',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.video_library_outlined),
                label: 'Library',
              ),
            ],
          ),
          body: cubit.screen[cubit.currentindex],
        );
      },
      listener: (context, state) {},
    );
  }
}
