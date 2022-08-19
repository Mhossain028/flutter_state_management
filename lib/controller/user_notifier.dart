import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:state_management/model/user.dart';

class UserNotifier extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<User> _userList = [];
  int _age = 0;
  int _height = 0;

  UnmodifiableListView<User> get userList => UnmodifiableListView(_userList);
  int get age => _age;
  int get height => _height;

  addUser(User user) {
    _userList.add(user);
    notifyListeners();
  }

  deleteUser(index) {
    // ignore: no_leading_underscores_for_local_identifiers
    _userList.removeWhere((_user) => _user.name == userList[index].name);
    notifyListeners();
  }

  incrementAge(){
    _age++;
    notifyListeners();
  }
  incrementHeight(){
    _height++;
    notifyListeners();
  }
}
