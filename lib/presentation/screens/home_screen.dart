import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:seneca_flutter/config/widgets/text_widget/text_passwd.dart';
import 'package:seneca_flutter/config/widgets/text_widget/text_user.dart';
import 'package:seneca_flutter/domain/entities/user_register.dart';
import 'package:seneca_flutter/infrastructure/models/local_users_model.dart';
import 'package:seneca_flutter/presentation/screens/main_screen.dart';
import 'package:seneca_flutter/presentation/screens/provider/user_provider.dart';
import 'package:seneca_flutter/services/firebase_service.dart';
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
      final miniHeightSeparator = Container(
        width: MediaQuery.of(context).size.width / 80,
        height: double.infinity);
      final heightSeparator = Container(
        width: MediaQuery.of(context).size.width / 20,
        height: double.infinity);
      UserProvider checker = UserProvider();
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
              
              //checker.checkUser(userText.textContol.value.text, passwdText.textContol.value.text);
              bool check = checker.check(userText.textContol.value.text, passwdText.textContol.value.text);
              if(check==true)
              {
                UserRegister userHome = checker.sendUser(userText.textContol.value.text, passwdText.textContol.value.text);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen(user: userHome)));
              }
              userText.textContol.clear();
              passwdText.textContol.clear();
            },
             style:  ButtonStyle(backgroundColor:botonBlanco,
             shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
             fixedSize: sizeBoton
             ),
             child: Text("Entrar",style: TextStyle(color:colors[1]),)
            ),
            miniSeparator,
            Text("O",style: TextStyle(color: colors[0],)),
            miniSeparator,
            FilledButton(onPressed: () async{
              
              FirebaseService service = FirebaseService();
                      try {
                      await service.signInWithGoogle();
                        User? userGoogle = FirebaseAuth.instance.currentUser;
                        if(userGoogle!=null)
                        {
                          UserRegister user = UserRegister(nameGoogle: userGoogle.displayName,email: userGoogle.email);
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen(user: user)));

                        }
                        } catch(e){
                          if(e is FirebaseAuthException){
                            
                          }
                        }
              //   FirebaseService service = FirebaseService();
              //   await service.signInWithGoogle();
              //   User? result = FirebaseAuth.instance.currentUser;
              // if(result != null)
              // {
              //   try
              //   {
              //     UserRegister user = UserRegister(nameGoogle: result.displayName,email: result.email);
              //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen(user: user)));
                  
              //   }
              //   catch(e)
              //   {
              //     if(e is FirebaseAuthException)
              //     {
              //       print(e.message);
              //     }
              //   }
              // }
            },
            style:  ButtonStyle(backgroundColor:botonBlanco,
             shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
             fixedSize: sizeBoton
             ),
            child: Row(children: [
              heightSeparator,
              Text("Iniciar sesion con google",style: TextStyle(color: colors[1]),),
              miniHeightSeparator,
              Icon( FontAwesomeIcons.google,color:colors[1],)
            ],)),
            separator,
            FilledButton.tonal(onPressed: (){}, 
             style: const ButtonStyle(backgroundColor:botonTransparente),
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
