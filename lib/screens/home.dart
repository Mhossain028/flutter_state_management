import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/user_notifier.dart';
import 'package:state_management/model/user.dart';
import 'package:state_management/screens/user_list_screen.dart';
import 'package:state_management/widget/cheetah_button.dart';
import 'package:state_management/widget/cheetah_input.dart';
import 'package:state_management/widget/user_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _city;
  late String _name;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    UserNotifier userNotifier = Provider.of<UserNotifier>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Provider Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheetahInput(
                labelText: 'Name',
                onSaved: (value) {
                  _name = value;
                },
              ),
              const SizedBox(height: 16),
              CheetahInput(
                labelText: 'City',
                onSaved: (value) {
                  _city = value;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheetahButton(
                    text: 'ADD',
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) return;

                      _formKey.currentState!.save();

                      userNotifier.addUser(User(_name, _city));
                      //addUser(User(_name, _city));
                    },
                  ),
                  const SizedBox(width: 8),
                  CheetahButton(
                    text: 'List',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              UserListScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              UserList(),
            ],
          ),
        ),
      ),
    );
  }
}
