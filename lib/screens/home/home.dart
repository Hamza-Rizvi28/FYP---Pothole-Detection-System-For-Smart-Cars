import 'package:flutter/material.dart';
import 'package:fyp/screens/home/camera/camera_initializer.dart';
import 'package:fyp/services/auth.dart';
import 'package:camera/camera.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
                                                                                    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Pothole'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: IconButton(
            icon: Icon(Icons.camera_alt),
            iconSize: 70.0,
            onPressed: () async {
              // Obtain a list of the available cameras on the device.
              final cameraList = await availableCameras();

              //Move to Camera Initialization Screen
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(cameraList)));
            },
          ),
          
        ),
      ),
    );
  }
}
