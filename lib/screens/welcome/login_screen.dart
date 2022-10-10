/* 
* filename: login_screen.dart
* author: Logan Anderson
* date created: 09/24/22
* brief: designs the log in screen
*/

import 'package:flutter/material.dart';


//main class for login screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

/*
* name: _BodyState
* author: Logan Anderson
* created: 09/24/22
* brief: Designs the body of the welcome screen, which includes
* username and password input boxes, place to create account/login, and
* game logo.
*/
class _BodyState extends State<Body> {
  TextEditingController userController = TextEditingController(); //not sure what these do yet
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(     //Padding widget helps spacing of child widgets
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(    //widget for the logo
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Image.asset(
                'assets/images/campus-battle-logo1.png',
                semanticLabel: 'Campus Battle Logo',
                width: 315,
                fit: BoxFit.contain,
              )
          ),
          Container(    //widget for sign in text
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: const Text(
              'Sign In',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(      //widget for username input box
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: TextField(
              controller: userController, //not sure what this does yet
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(    //widget for password input box
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
            child: TextField(
              obscureText: true,    
              controller: passController, //not sure ehat this does yet
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          //Put TextButton for forgot password here?
          Container(  //widget for create account button
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextButton(
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () {
                  //create account screen
                  Navigator.pushNamed(context, '/createAccount');
                },
              )),
          Container(    //widget for Login button
            height: 50,
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: ElevatedButton(
              onPressed: () {
                //go through user authentication process
                //temporary - just goes to game map
                Navigator.pushNamed(context, '/gameMap');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                //height should be same as user and pass height
              ),
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
