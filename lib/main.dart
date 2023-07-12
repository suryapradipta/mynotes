import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynotes/views/home.dart';
import 'package:mynotes/views/login_view.dart';
import 'package:mynotes/views/register_view.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        '/login/': (context)=> LoginView(),
        '/register/': (context)=> RegisterView(),
      },
    );

  }
}




