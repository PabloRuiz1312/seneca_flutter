
import 'package:seneca_flutter/domain/entities/user_register.dart';

class LocalUserModel
{
  final String nameUser;
  final String passwd;
  final String name;
  final String center;
  final String rol;

  LocalUserModel({required this.nameUser,required this.passwd,this.name="Unknown",this.center="Unknown",this.rol="Uknown"});

  factory LocalUserModel.fromJson(Map<String,dynamic> json) => LocalUserModel(
    nameUser: json["nameUser"] ?? "404",
    passwd: json["passwd"] ?? "404",
    name: json["name"] ?? "Unknown",
    center: json["center"] ?? "Unknown",
    rol: json["rol"] ?? "Unknown"
  );

  UserRegister toUserRegisterEntity()=> UserRegister(
    nameUser: nameUser,
    passwd: passwd, 
    name: name, 
    center: center,
    rol: rol
    );
  
  //PARTE PARA EL PROVIDER DE GOOGLE SHEET

  factory LocalUserModel.toJson(dynamic json) => LocalUserModel(
      name: json["nombre"] ?? "404",
      nameUser: json["usuario"] ?? "404",
      passwd: json["passwd"] ?? "404"
  );

  Map<String,dynamic> toUserSheetEntity()=>
  {
    name:name,
    nameUser:nameUser,
    passwd:passwd
  };

}

