import 'package:flutter/material.dart';
const colorTheme = Color.fromRGBO(255, 255, 255, 1);
// ignore: must_be_immutable
class TextPasswd extends StatelessWidget {
  TextPasswd({super.key});
  var textContol = TextEditingController();
  var focusNode = FocusNode();
  
  @override
  Widget build(BuildContext context) 
  {
    var decoration = InputDecoration(hintText: "Contraseña",
    hintStyle:const TextStyle(color:colorTheme),
    filled: true,
    enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color:colorTheme)),
    suffixIcon: const Icon(Icons.remove_red_eye,color:colorTheme ,),
    fillColor: const Color.fromARGB(255, 55, 70, 239)
    );

    return TextFormField(
      
      onTapOutside: (event)
      {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textContol,
      decoration: decoration,
    );
  }
}