import 'package:flutter/material.dart';

void main() => runApp(NavegacaoApp());

class NavegacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacao - HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: const Text('Ir para DetailPage'),
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacao - DetailPage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar para HomePage'),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<StatefulWidget> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  double _opacity1 = 1.0, _opacity2 = 1.0, _opacity3 = 1.0;

  Widget _coloredSquare(Color color) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Click on colored squares below to make them invisible, click '
              'once again to make them reappear.',
            ),
            GestureDetector(
              onTap: () {
                setState(() => this._opacity1 = 1.0 - this._opacity1);
              },
              child: Opacity(
                opacity: _opacity1,
                child: _coloredSquare(Colors.red),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => this._opacity2 = 1.0 - this._opacity2);
              },
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity2,
                child: _coloredSquare(Colors.green),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => this._opacity3 = 1.0 - this._opacity3);
              },
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity3,
                child: _coloredSquare(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}