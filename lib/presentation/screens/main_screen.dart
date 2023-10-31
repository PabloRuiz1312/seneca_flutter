import 'package:flutter/material.dart';
import 'package:seneca_flutter/domain/entities/user_register.dart';
const List<Color> colors  = [ Color.fromRGBO(255, 255, 255, 1),
                              Color.fromARGB(193, 55, 70, 239),
                              Color.fromRGBO(0, 0, 255, 100)];
const MaterialStateProperty <Color> botonBlanco = MaterialStatePropertyAll(Color.fromRGBO(255, 255, 255, 1));
const MaterialStateProperty <Color> botonTransparente = MaterialStatePropertyAll(Color.fromRGBO(255, 255, 255, 0));

// ignore: must_be_immutable
class MainScreen extends StatelessWidget 
{
  UserRegister user;
  MainScreen({super.key,required this.user});
  
  @override
  Widget build(BuildContext context) {
      final separator = Container(
      height: MediaQuery.of(context).size.height / 20,
      width: double.infinity,
      );
      final gigaSeparator = Container(
      height: MediaQuery.of(context).size.height / 6,
      width: double.infinity,
      );
      final miniSeparator = Container(
      height: MediaQuery.of(context).size.height / 80,
      width: double.infinity,
      );
    return Scaffold(
      backgroundColor: colors[1],
      body: Column(children: [
                            separator,
                            Container(width: double.infinity,
                                      height: MediaQuery.of(context).size.width / 3,
                                      color: colors[1],
                                      child: Column(children: [
                                          Text("ISéneca",style: TextStyle(fontSize: 60,color:colors[0],fontWeight: FontWeight.bold),),
                                          Container(width: MediaQuery.of(context).size.width / 1.2,
                                      height: MediaQuery.of(context).size.width / 3,
                                      color: colors[0],
                                      alignment: AlignmentDirectional(-0.8,0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text(user.name, style: const TextStyle(fontSize: 25,),),
                                        Text(user.center,style: TextStyle(fontSize: 20,color: colors[2],fontWeight: FontWeight.bold) ),
                                        Text("Perfil ${user.rol}",style: TextStyle(fontSize: 20,color: colors[2],fontWeight: FontWeight.bold))
                                      ]
                                      ),
                                      ),
                                      ],
                                      ),
                                      )
                                      ]
                                     )
    );
  }
}