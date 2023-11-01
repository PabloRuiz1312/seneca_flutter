import 'package:flutter/material.dart';
import 'package:seneca_flutter/domain/entities/user_register.dart';
const List<Color> colors  = [ Color.fromRGBO(255, 255, 255, 1),
                              Color.fromARGB(193, 55, 70, 239),
                              Color.fromRGBO(0, 0, 255, 100),
                              Color.fromRGBO(27, 179, 255, 1),
                              Color.fromRGBO(0, 0, 0, 100)];
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
      final heightSeparator = Container(
        width: MediaQuery.of(context).size.width / 20,
        height: double.infinity);
      final gigaHeightSeparator = Container(
        width: MediaQuery.of(context).size.width / 8,
        height: double.infinity);
      final miniHeightSeparator = Container(
        width: MediaQuery.of(context).size.width / 80,
        height: double.infinity);
    return Scaffold(
      backgroundColor: colors[1],
      body:  Column(children: [
                        separator,
                        Text("ISéneca",style: TextStyle(fontSize: 60,color: colors[0],fontWeight: FontWeight.bold)),
                        Container(
                        color: colors[0],
                        alignment: AlignmentDirectional.centerStart,
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height / 26,
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text(user.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          gigaHeightSeparator,
                          heightSeparator,
                          heightSeparator,
                          IconButton(onPressed: (){}, icon: Icon(Icons.people_alt,color: colors[4],))
                        ],
                        ),
                        ),
                        Container(
                        color: colors[0],
                        alignment: AlignmentDirectional.centerStart,
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height / 15,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text(user.center,style: TextStyle(color: colors[2],fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("Perfil ${user.rol}",style: TextStyle(color: colors[2],fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                        ),
                        ),
                        Container(
                        color: colors[3],
                        alignment: AlignmentDirectional.centerStart,
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height / 15,
                        child: Row(
                          children: [
                            heightSeparator,
                            heightSeparator,
                           
                            Icon(Icons.alarm,color: colors[0],),
                            miniHeightSeparator,
                            miniHeightSeparator,
                            Text("Avisos",style: TextStyle(color: colors[0]),),
                            gigaHeightSeparator,
                            Icon(Icons.collections_bookmark_rounded,color: colors[0],),
                            miniHeightSeparator,
                            Text("Bandeja de firmas",style: TextStyle(color: colors[0]),)
                          ],
                        ),
                        ),
                        separator,
                        separator,
                        Container(
                          width: double.infinity,
                          height:  MediaQuery.of(context).size.height / 15,
                          child: Row(children: [
                          gigaHeightSeparator,
                          miniHeightSeparator,
                          Icon(Icons.person,color: colors[3],size: 50,),
                          gigaHeightSeparator,
                          heightSeparator,
                          Icon(Icons.emoji_people_rounded, color: colors[3],size: 50,),
                          gigaHeightSeparator,
                          heightSeparator,
                          Icon(Icons.coronavirus,color: colors[3],size: 50,)
                        ],),
                        ),
                         Container(
                          width: double.infinity,
                          height:  MediaQuery.of(context).size.height / 15,
                          child: Row(children: [
                          heightSeparator,
                          heightSeparator,
                          const Text("Alumnado del\ncentro",style:TextStyle(fontSize: 15) ,textAlign: TextAlign.center,),
                          heightSeparator,
                          miniHeightSeparator,
                          const Text("Personal del\ncentro",style:TextStyle(fontSize: 15) ,textAlign: TextAlign.center,),
                          heightSeparator,
                          heightSeparator,
                          const Text("Información\ncentro",style:TextStyle(fontSize: 15) ,textAlign: TextAlign.center,),
                        ],),
                        ),
                        separator,
                        separator,
                        separator,
                        Container(
                          width: double.infinity,
                          height:  MediaQuery.of(context).size.height / 15,
                          child: Row(children: [
                          gigaHeightSeparator,
                          miniHeightSeparator,
                          Icon(Icons.notifications,color: colors[3],size: 50,),
                          gigaHeightSeparator,
                          heightSeparator,
                          Icon(Icons.calendar_today, color: colors[3],size: 50,),              
                        ],),
                        ),
                         Container(
                          width: double.infinity,
                          height:  MediaQuery.of(context).size.height / 15,
                          child: Row(children: [
                          heightSeparator,
                          heightSeparator,
                          const Text("Tablón de\nanuncios",style:TextStyle(fontSize: 15) ,textAlign: TextAlign.center,),
                          heightSeparator,
                          miniHeightSeparator,
                          heightSeparator,
                          miniHeightSeparator,
                          miniHeightSeparator,
                          const Text("Calendario\nescolar",style:TextStyle(fontSize: 15) ,textAlign: TextAlign.center,),
                        ],),
                        ),
                        separator,
                        miniSeparator,
                        miniSeparator,
                        Container(
                          width: double.infinity,
                          height:  MediaQuery.of(context).size.height / 25,
                          child: Row(children: [
                          heightSeparator,
                          miniHeightSeparator,
                          Icon(Icons.house_rounded,color: colors[3],size: 30,),
                          gigaHeightSeparator,
                          heightSeparator,
                          Icon(Icons.watch_later_outlined, color: colors[3],size: 30,),
                          gigaHeightSeparator,
                          heightSeparator,
                          Icon(Icons.messenger_outline_sharp, color: colors[3],size: 30,),
                          gigaHeightSeparator,
                          heightSeparator,
                          Icon(Icons.menu,color: colors[3],size: 30,)
                        ],
                        ),
                        ),
                         Container(
                          width: double.infinity,
                          height:  MediaQuery.of(context).size.height / 25,
                          child: Row(children: [
                          heightSeparator,
                          miniHeightSeparator,
                          const Text("Inicio" ,textAlign: TextAlign.center,),
                          gigaHeightSeparator,
                          miniHeightSeparator,
                          const Text("Agenda" ,textAlign: TextAlign.center,),
                          heightSeparator,
                          miniHeightSeparator,
                          const Text("Comunicaciones" ,textAlign: TextAlign.center,),
                          heightSeparator,
                          miniHeightSeparator,
                          miniHeightSeparator,
                          const Text("Menú" ,textAlign: TextAlign.center,),
                          ]
                          )
                         )



                       ],
                      )               
    );
  }
}