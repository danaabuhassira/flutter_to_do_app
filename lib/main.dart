import 'package:flutter/material.dart';
import 'package:to_do_app/providers/task_provider.dart';
import 'package:to_do_app/screens/home.dart';
import 'package:provider/provider.dart';


void main (){
  runApp(
    ChangeNotifierProvider(
        create: (_) => TaskProvider(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title :'Add to list',
    home : Home(),
    theme: ThemeData (
      brightness: Brightness.light,
    ),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
    themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
  );
  }
}