import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';

class RecordingScreen extends StatelessWidget {
  const RecordingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit, AppStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.close),
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 12,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Text(
                        'Listening...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50,
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
