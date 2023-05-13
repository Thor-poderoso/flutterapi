import 'package:flutter/material.dart';
import 'package:a/src/login_page.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Profile extends StatelessWidget {
  final String username;

  const Profile({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
        snakeViewColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 190, 226, 223),
        items: [BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.teal)),BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.teal)) ],
        onTap: (index) {
          if (index == 0) {
                Navigator.pushNamed(context, '/home');
          } else {
                Navigator.pushNamed(context, '/home');
          }
              },
      ),
      backgroundColor: Color.fromARGB(255, 209, 218, 216),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_circle, size: 100),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit, size: 25),
                      SizedBox(width: 10),
                      Text('Username: $username',
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit, size: 25),
                      SizedBox(width: 10),
                      Text(
                          'Email: QUANDO O BRUNO CONSERTAR O BANCO O EMAIL VAI APARECER',
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit, size: 25),
                      SizedBox(width: 10),
                      Text('Age: O MESMO PRA IDADE',
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black38),
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('<< Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
