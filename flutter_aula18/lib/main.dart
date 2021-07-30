import 'package:flutter/material.dart';
import 'Page.dart';

void main() {
  runApp(MaterialApp(
    home: FormPageUma(),
  ));
}

class FormPageUma extends StatelessWidget {
  const FormPageUma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Formulário De Dados';

    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Image.asset('img/images.jpeg'),
          Padding(
              padding: EdgeInsets.all(
            16,
          )),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FormsOne()));
            },
            child: Text('Go!'),
          ),
        ],
      ),
    );
  }
}
