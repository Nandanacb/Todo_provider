import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/todoScreen.dart';
import 'package:todo/todoprovider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TextAddProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Todoscreen(),
      ),
    );
  }
}
  