import 'package:flutter/material.dart';
import 'package:task5/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: Center(
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "User Name",
                      prefixIcon: Icon(Icons.person),
                    )),
                SizedBox(height: 10.0),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                    )),
                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: !show,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: "password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: Icon(
                              show ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              show = !show;
                            });
                          })),
                ),
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber[500],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
