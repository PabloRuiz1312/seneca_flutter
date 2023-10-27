import 'package:flutter/material.dart';
import 'package:seneca_flutter/domain/entities/user_register.dart';
import 'package:seneca_flutter/infrastructure/models/local_users_model.dart';
import 'package:seneca_flutter/shared/data/local_user_register.dart';

class UserProvider extends ChangeNotifier
{
  bool enterHome = false;
  List<UserRegister> users = [];
  Future <void> checkUser(String userName,String passwd) async
  {
    await Future.delayed(const Duration(seconds: 2));
    final List <UserRegister> newUsers = userRegisters.map(
      (user) => LocalUserModel.fromJson(user).toUserRegisterEntity()
    ).toList();
    users.addAll(newUsers);
    for(UserRegister user in users)
    {
      if(userName==user.nameUser && passwd==user.passwd)
      {
        notifyListeners();
      }
    }
    
  }
}