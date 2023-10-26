import 'package:flutter/material.dart';
import 'package:seneca_flutter/config/widgets/text_widget/text_passwd.dart';
import 'package:seneca_flutter/config/widgets/text_widget/text_user.dart';
import 'package:seneca_flutter/infrastructure/models/local_users_model.dart';
const List<Color> colors  = [ Color.fromRGBO(255, 255, 255, 1),
                              Color.fromARGB(193, 55, 70, 239)];
const MaterialStateProperty <Color> botonBlanco = MaterialStatePropertyAll(Color.fromRGBO(255, 255, 255, 1));
const MaterialStateProperty <Color> botonTransparente = MaterialStatePropertyAll(Color.fromRGBO(255, 255, 255, 0));
const MaterialStateProperty <Size> sizeBoton = MaterialStatePropertyAll(Size(300,50));
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextUser userText = TextUser();
  TextPasswd passwdText = TextPasswd();
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
      backgroundColor: const Color.fromARGB(193, 55, 70, 239),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gigaSeparator,
            Text("ISéneca",style: TextStyle(fontSize: 60,color:colors[0],fontWeight: FontWeight.bold),),
            miniSeparator,
            SizedBox( width: MediaQuery.of(context).size.width*0.8,child: userText),
            miniSeparator,
            SizedBox(width: MediaQuery.of(context).size.width*0.8,child: passwdText),
            miniSeparator,
            FilledButton(onPressed: (){
              userText.textContol.clear();
              passwdText.textContol.clear();
            },
             style:  ButtonStyle(backgroundColor:botonBlanco,
             shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
             fixedSize: sizeBoton
             ),
             child: Text("Entrar",style: TextStyle(color:colors[1]),)
            ),
            separator,
            FilledButton.tonal(onPressed: (){}, 
             style: ButtonStyle(backgroundColor:botonTransparente),
            child: Text("No recuerdo mi contraseña",style: TextStyle(color: colors[0],),)
            ),
            gigaSeparator,
           ListTile(
            //leading: Image.asset("assets/images/imagenJunta.png"),
            title: Text("Junta de Andalucia",style: TextStyle(color: colors[0]),),
            subtitle:  Text("Consejería de Educacion y Deporte",style: TextStyle(color: colors[0])),
           )
            
            

          
          ],
        ),
      ),
    );
  }
}