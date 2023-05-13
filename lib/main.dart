import 'dart:convert';
import 'package:a/src/profile.dart';
import 'package:flutter/material.dart';
import 'package:a/src/login_page.dart';
import 'package:a/src/signup_page.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'src/model/model.dart';

void main() async {
  // Student students = Student();
  // String jsonData = await students.getAllitems();

  // dynamic data = jsonEncode(jsonData);

  //  print(data);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Colors.transparent, // define a cor de fundo como transparente
          elevation: 0, // define a elevação como zero
        ),
      ),
      home: const MyHomePage(title: ''),
      routes: {
        '/home': (context) => const MyApp(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/profile': (context) => const Profile(username: '',),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 218, 216),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black38),
                  minimumSize: MaterialStateProperty.all(const Size(200, 50))),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black38),
                  minimumSize: MaterialStateProperty.all(const Size(200, 50))),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text('Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}
