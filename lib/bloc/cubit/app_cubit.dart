import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/states/app_states.dart';
import 'package:project_test/screens/home_screen.dart';
import 'package:project_test/screens/library_screen.dart';
import 'package:project_test/screens/shorts_screen.dart';
import 'package:project_test/screens/subscriptions_screen.dart';

class Appcubit extends Cubit<AppStates> {
  Appcubit() : super(Appintistate());
  static Appcubit get(context) => BlocProvider.of(context);

  int currentindex = 0;
  List<Widget> screen = [
    HomeScreen(),
    ShortsScreen(),
    SubscriptionsScreen(),
    LibraryScreen(),
  ];
  List<String> title = [
    'Home',
    'Shorts',
    'Subscriptions',
    'Library',
  ];

  changBottomnavScreen(int index) {
    currentindex = index;

    emit(ChangebottomState());
  }
}
