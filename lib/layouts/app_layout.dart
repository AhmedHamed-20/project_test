import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key key}) : super(key: key);

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
              width: 120,
              height: 100,
            ),
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.live_tv_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
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
                icon: Icon(Icons.library_books_outlined),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.subscriptions_outlined),
                label: 'Subscriptions',
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
