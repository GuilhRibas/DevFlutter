import 'package:flutter/material.dart';

void main() => runApp(MyRoutes2());

class MyRoutes2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },
      // Criando uma função para operar com rotas nomeadas.
      // Usamos esta função para identificar o nome da
      // rota que tem push, e criar a rota para a
      // tela correta.
      onGenerateRoute: (settings) {
        // Se você der push passamos argumentos pela rota
        if (settings.name == PassArgumentsScreen.routeName) {
          // envie os argumentos para a rota correta
          // digite: ScreenArguments.
          final args = settings.arguments as ScreenArguments;

          // Em seguida, extraia os dados necessários dos
          // os argumentos e passar os dados para a
          // tela correta.
          // configuração da estilização da tela
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        // O código suporta apenas
        // PassArgumentsScreen.routeName a partir de agora.
        // Outros valores precisam ser implementados se precisarmos

        assert(false, 'Precisa implemetar ${settings.name}');
        return null;
      },
      title: 'Filosofia Pirata',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotas com Frases Boas e um splash'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('imagens/dois.png'),
            // ​​botão que navega para uma rota nomeada.
            // A rota nomeada extrai os argumentos
            // sozinha.
            ElevatedButton(
              onPressed: () {
                // O que acontece:
                // Quando o usuário toca no botão,
                // navega para uma rota nomeada e
                // fornece os argumentos como um opcional de
                // parâmetro.
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Argumentos',
                    '"20 conto uma cueca"- socrates',
                  ),
                );
              },
              child: Text(
                'Clique para ler a primeira mensagem!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            // O ​​botão que navega para uma rota nomeada.
            // Para esta rota, extraia os argumentos em
            // a função onGenerateRoute e envia
            // para a tela definida.
            Padding(padding: EdgeInsets.all(8)),
            Image.asset('imagens/confia.jpeg'),

            ElevatedButton(
              onPressed: () {
                // Quando o usuário toca no botão,
                // navega para uma rota nomeada e
                // fornece os argumentos como um opcional de
                // parâmetro.
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Recebendo o pé da letra',
                    'O naruto pode ser um pouco duro as vezes, talvez você não saiba disso[...]',
                  ),
                );
              },
              child: Text(
                'Clique aqui para ler a segunda Mensagem!',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Este ​​widget que extrai os argumentos necessários de
// o ModalRoute.
class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extrai os argumentos do ModalRoute atual
    // configura e e envia como ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

// W​widget aceita os argumentos necessários por meio do
// construtor
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  // Este widget aceita os argumentos como construtor de
  // parâmetros, porém não extrai os argumentos de
  // o ModalRoute.
  // ----------------------------------
  // Os argumentos são extraídos pela função onGenerateRoute
  // declarada no widget MaterialApp.
  const PassArgumentsScreen({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

// Podemos passar qualquer objeto para o parâmetro de argumentos.
// Neste exemplo, criamos uma classe que com título e uma
// mensagem
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
