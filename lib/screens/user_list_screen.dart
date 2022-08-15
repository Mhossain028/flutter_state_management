// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:state_management/model/user.dart';
import 'package:state_management/widget/user_list.dart';

class UserListScreen extends StatefulWidget {
  final List<User> users;
  final Function(User) onDelete;

  UserListScreen(
    this.users,
    this.onDelete,
  );


  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  deleteUser(User user)
  {
    setState(() {
      widget.onDelete(user);
    });
  }
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
      body: Padding(
        // ignore: sort_child_properties_last
        child: UserList(
          users: widget.users,
          onDelete: deleteUser,
        ),
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
