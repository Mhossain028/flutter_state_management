// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:state_management/widget/user_list.dart';

class UserListScreen extends StatefulWidget {


  const UserListScreen({Key? key}) : super(key: key);


  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Useres',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Padding(
        // ignore: sort_child_properties_last
        child: UserList(),
        padding: EdgeInsets.all(8),
      ),
    );
  }
}
