// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/user_notifier.dart';

class UserList extends StatelessWidget {

  const UserList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserNotifier userNotifier = Provider.of<UserNotifier>(context);
    print("User list rebuilding");
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<UserNotifier>(builder: (_, notifier, __) => Text(
                    'Name: ${notifier.userList[index].name}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),),
                  const SizedBox(height: 8),
                  Consumer<UserNotifier>(builder: (_, notifier, __) => Text(
                    'Name: ${notifier.userList[index].city}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),),
                ],
              ),
              Consumer <UserNotifier> (
                builder: (_, notifier, __) => IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => notifier.deleteUser(index),
              ),
              ),
            ],
          ),
        ),
      ),
      itemCount: userNotifier.userList.length,
    );
  }
}
