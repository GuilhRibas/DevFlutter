import 'dart:ui';

import 'package:flutter/material.dart';
import 'main.dart';

class ClassMy extends StatefulWidget {
  const ClassMy({Key? key}) : super(key: key);

  @override
  _ClassMyState createState() => _ClassMyState();
}

class _ClassMyState extends State<ClassMy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Testando Layouts.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Image.asset(
              "imagens/meme.png",
              height: 450,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                " < BUTTON ",
                style: TextStyle(
                  backgroundColor: Colors.black,
                  height: 2.5,
                  color: Colors.white,
                  letterSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
