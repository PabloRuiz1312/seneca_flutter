import 'package:flutter/material.dart';
import 'package:seneca_flutter/config/theme/app_theme.dart';
import 'package:seneca_flutter/presentation/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Seneca",
      theme: AppTheme(selectedColor: 0).theme(),
      home:  HomeScreen(),

    );
  }

}