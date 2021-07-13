import 'package:flutter/material.dart';

class CamposDart extends StatefulWidget {
  const CamposDart({Key? key}) : super(key: key);

  @override
  _CamposDartState createState() => _CamposDartState();
}

class _CamposDartState extends State<CamposDart> {
  //controlador usado como um construtor
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes de entradas de dados.",
            style: TextStyle(backgroundColor: Colors.orangeAccent)),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(35),
            child: TextField(
              //entrada de dados do campo texto
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              maxLength: 8,
              obscureText: false,
              onSubmitted: (String e) {
                print("o valor foi: " + e);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Enviar "),
            color: Colors.deepOrange,
            onPressed: () {
              print("Valor Foi: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
