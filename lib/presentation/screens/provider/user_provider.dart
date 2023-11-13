import 'package:flutter/material.dart';
import 'package:seneca_flutter/domain/entities/user_register.dart';
import 'package:seneca_flutter/infrastructure/models/local_users_model.dart';
import 'package:seneca_flutter/shared/data/local_user_register.dart';
import 'dart:io';

class UserProvider extends ChangeNotifier
{
  bool enterHome = false;
  List<UserRegister> users = [];
  ///!DEPRECATED <br>
  ///Metodo que recorre a lista de usuarios y devuelve un usuario en caso de encontrarlo
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
        enterHome = true;
        notifyListeners();
      }
    }
    //print(enterHome);
    
  }
  bool check(String userName,String passwd) 
  {
    bool userFound = false;
    final List <UserRegister> newUsers = userRegisters.map(
      (user) => LocalUserModel.fromJson(user).toUserRegisterEntity()
    ).toList();
    users.addAll(newUsers);
    for(UserRegister user in users)
    {
      if(userName==user.nameUser && passwd==user.passwd)
      {
        userFound = true;
      }
    }
    return userFound;
  }
  UserRegister sendUser (String userName,String passwd)
  {
    UserRegister userToSend = UserRegister(nameUser: "", passwd: "", name: "", center: "",rol: "");
      final List <UserRegister> newUsers = userRegisters.map(
      (user) => LocalUserModel.fromJson(user).toUserRegisterEntity()
      ).toList();
      users.addAll(newUsers);
      for(UserRegister user in users)
      {
        if(userName==user.nameUser && passwd==user.passwd)
        {
          userToSend = UserRegister(nameUser: user.nameUser, passwd: user.passwd, name: user.name, center: user.center,rol: user.rol);
        }
      }
    return userToSend;
  }
}