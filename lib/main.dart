import 'package:flutter/material.dart';
import 'package:fyp/screens/wrapper.dart';
import 'package:fyp/services/auth.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'SPOTHOLE',
        home: Wrapper(),
      ),
    );
  }
}

/*

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white54,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white70,
              Colors.grey,
              Colors.blueGrey,
            ],
            stops: [0.2, 0.5, 0.7],
          ),
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            //Sign In text
            Text(
              "Sign In",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20.0),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Email'),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Enter your Email.'),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text('Password'),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: 'Enter your password.'),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Center(
                      child: 
                      RaisedButton(
                        child: Text('Login'),
                      
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
*/