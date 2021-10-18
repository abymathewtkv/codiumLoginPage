import 'package:flutter/material.dart';
import 'package:loginpage/UI/inputField.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InputField(
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    "Username"),
                InputField(
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    "Password"),
                Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    child: Text("Login",style: TextStyle(fontSize: 20.0),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
