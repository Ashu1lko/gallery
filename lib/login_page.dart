import 'package:flutter/material.dart';
import './home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Image.asset(
          'assets/conatus png.png',
          fit: BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Form(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal
                  ),
                              child: Column(
                    children: <Widget>[
                     TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter name",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter numeric password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: RaisedButton(
                      
                      color: Colors.teal,
                      child: Text('Login'),
                      onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                      
                    ),
                  )
                    ],
                  ),
                ),
              ),
                  ),
            )
          ],
        )
      ]),
    );
  }
}
