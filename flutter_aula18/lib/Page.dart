import 'package:flutter/material.dart';

void main() => runApp(FormsOne());

class FormsOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Formulário De Dados';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.blueGrey,
        ),
        body: const FormsOneCustom(),
      ),
    );
  }
}

class FormsOneCustom extends StatefulWidget {
  const FormsOneCustom({Key? key}) : super(key: key);

  @override
  FormsOneState createState() {
    return FormsOneState();
  }
}

class FormsOneState extends State<FormsOneCustom> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  final TextEditingController _controladorPeso = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 14.0),
          ),
          TextField(
            controller: _controllerEmail,
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 14.0),
          ),
          TextField(
            controller: _controllerNome,
            decoration: InputDecoration(labelText: 'Nome: '),
            keyboardType: TextInputType.text,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 14.0),
          ),
          TextField(
            controller: _controladorIdade,
            decoration: InputDecoration(labelText: 'Idade: '),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 14.0),
          ),
          CheckboxListTile(
            title: const Text('Sedentário'),
            subtitle: const Text('só dorme'),
            secondary: const Icon(Icons.account_box),
            activeColor: Colors.green,
            checkColor: Colors.redAccent,
            selected: _isChecked,
            value: _isChecked,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            title: const Text('Iniciante'),
            subtitle: const Text('treina pelo menos 2x por semana'),
            secondary: const Icon(Icons.account_box),
            activeColor: Colors.green,
            checkColor: Colors.redAccent,
            selected: _isChecked,
            value: _isChecked,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            title: const Text('Intermediário'),
            subtitle: const Text(' treina pelo menos 5x por semana'),
            secondary: const Icon(Icons.account_box),
            activeColor: Colors.green,
            checkColor: Colors.redAccent,
            selected: _isChecked,
            value: _isChecked,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            title: const Text('Avançado'),
            subtitle: const Text('treina todos os dias'),
            secondary: const Icon(Icons.account_box),
            activeColor: Colors.green,
            checkColor: Colors.redAccent,
            selected: _isChecked,
            value: _isChecked,
            onChanged: (value) {},
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          RaisedButton(
            child: Text('Cadastrar'),
            onPressed: () {
              final String nome = _controllerNome.text;
              final int? idade = int.tryParse(_controladorIdade.text);
              final double? peso = double.tryParse(_controladorPeso.text);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: const Text('Training Shop.'),
          ),
        ],
      )),
    );
  }
}

////Classe
class Produto {
  final String nome;
  final int idade;
  final String email;
  final double peso;

  Produto(
    this.email,
    this.nome,
    this.idade,
    this.peso,
  );

  @override
  String toString() {
    return 'Produto{Nome: $nome,Email: $email, Idade: $idade, Peso: $peso}';
  }
}
