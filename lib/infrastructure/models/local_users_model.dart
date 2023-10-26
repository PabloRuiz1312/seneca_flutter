
import 'package:seneca_flutter/domain/entities/user_register.dart';

class LocalUserModel
{
  final String nameUser;
  final String passwd;
  final String name;
  final String center;

  LocalUserModel({required this.nameUser,required this.passwd,required this.name,required this.center,});

  factory LocalUserModel.fromJson(Map<String,dynamic> json) => LocalUserModel(
    nameUser: json["nameUser"],
    passwd: json["passwd"],
    name: json["name"],
    center: json["center"]
  );

  UserRegister toUserRegisterEntity()=> UserRegister(
    nameUser: nameUser,
    passwd: passwd, 
    name: name, 
    center: center
    );
}

