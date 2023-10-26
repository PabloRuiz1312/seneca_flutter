import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextUser extends StatelessWidget {
  TextUser({super.key});
  var textContol = TextEditingController();
  var focusNode = FocusNode();
  
  @override
  Widget build(BuildContext context) 
  {
    var decoration = InputDecoration(hintText: "Usuario",
    hintStyle:const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
    filled: true,
    enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color.fromRGBO(255, 255, 255, 1))),
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