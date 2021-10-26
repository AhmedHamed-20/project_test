import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';
import 'package:flutter/material.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit, AppStates>(
      builder: (context, state) => Container(
        child: Center(
          child: Text('ShortsScreen'),
        ),
      ),
      listener: (context, state) {},
    );
  }
}
