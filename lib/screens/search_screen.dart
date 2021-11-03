import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_test/bloc/cubit/app_cubit.dart';
import 'package:project_test/bloc/states/app_states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController search_controller = TextEditingController();
    return BlocConsumer<Appcubit, AppStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Container(
                height: 40,
                color: Colors.grey[200],
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  cursorColor: Colors.black,
                  controller: search_controller,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  onSubmitted: (val) {},
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    focusColor: Colors.grey,
                    fillColor: Colors.grey,
                    labelText: 'Search YouTube',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[200],
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[200],
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            body: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.history,
                    color: Colors.black,
                  ),
                  title: Text(
                    'No Time To Die',
                  ),
                  trailing: Icon(
                    Icons.north_west,
                    color: Colors.black,
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 10,
            ),
          );
        },
        listener: (context, state) {});
  }
}
