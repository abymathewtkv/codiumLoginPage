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
        color: Colors.lightBlueAccent,
        child: Stack(
          children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            heightFactor: 0.5,
            widthFactor: 0.5,
            child:   Material(
              borderRadius: BorderRadius.all(Radius.circular(200.0)),
              color: Color.fromRGBO(255, 255, 255, 0.4),
              child: Container(
                width: 400,
                height: 400,
              ),
            ),
          ),
            Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/flutter-logo.png",width: 80,height: 80,),
                        )),

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
                        color: Colors.indigo,
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
          ],
        ),
      ),
    );
  }
}
