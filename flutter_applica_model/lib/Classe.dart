import 'package:flutter/material.dart';

class Classe extends StatefulWidget {
  const Classe({Key? key}) : super(key: key);

  @override
  _ClasseState createState() => _ClasseState();
}

class _ClasseState extends State<Classe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Cards Images Layout.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            Image.asset(
              'imagens/um.png',
              width: 265,
              height: 200,
            ),
            FlatButton(
                onPressed: () {},
                child: Text(
                  "TEXT ONE",
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 10,
                  ),
                )),
            Image.asset(
              'imagens/dois.png',
              width: 300,
              height: 150,
            ),
            FlatButton(
                onPressed: () {},
                child: Text(
                  "TEXT ONE",
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 10,
                  ),
                )),
            Image.asset(
              'imagens/tres.jpg',
              width: 340,
              height: 200,
            ),
            FlatButton(
                onPressed: () {},
                child: Text(
                  "TEXT ONE",
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 10,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
