import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 209, 218, 216),
      appBar: AppBar(
        title: const Text('Signup Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Usernamne';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _ageController,
                  decoration: const InputDecoration(labelText: 'Age'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Age';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only( bottom: 16.0, top: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
              minimumSize: MaterialStateProperty.all(Size(200, 50))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Validation passed, do something here
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        // You can handle the user's input here
                      }
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Signup'),
                  ),
                ),
                
                 ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
              minimumSize: MaterialStateProperty.all(Size(200, 50))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('<< Back'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
