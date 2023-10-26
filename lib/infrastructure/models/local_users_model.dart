
import 'package:seneca_flutter/domain/entities/user_register.dart';

class LocalUserModel
{
  final String nameUser;
  final String passwd;
  final String name;
  final String center;

  LocalUserModel({required this.nameUser,required this.passwd,this.name="Unknown",this.center="Unknown",});

  factory LocalUserModel.fromJson(Map<String,dynamic> json) => LocalUserModel(
    nameUser: json["nameUser"] ?? "404",
    passwd: json["passwd"] ?? "404",
    name: json["name"] ?? "Unknown",
    center: json["center"] ?? "Unknown"
  );

  UserRegister toUserRegisterEntity()=> UserRegister(
    nameUser: nameUser,
    passwd: passwd, 
    name: name, 
    center: center
    );
}

