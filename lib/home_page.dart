import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  //StatelessWidget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Home Page Scaffold
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("My Home  Page"),
      ),
    );
  }
}
