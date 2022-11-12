import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetComEstado(),
    ),
  );
}

class MeuWidgetImutavel extends StatelessWidget {
  const MeuWidgetImutavel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Eu não terei meu estado alterado');
  }
}

// stateful
class WidgetComEstado extends StatefulWidget {
  const WidgetComEstado({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WidgetComEstadoState createState() {
    return _WidgetComEstadoState();
  }
}

class _WidgetComEstadoState extends State<WidgetComEstado> {
  var _tamanho = 12.0;

  void _aumentar() {
    setState(() {
      _tamanho = _tamanho + 14;
    });
  }

  void _diminuir() {
    setState(() {
      _tamanho = _tamanho - 14;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FlutterLogo(size: _tamanho),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: _aumentar,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: _diminuir,
                child: const Icon(Icons.remove),
              )
            ],
          ),
        ],
      ),
    );
  }
}
