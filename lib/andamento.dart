import 'package:flutter/material.dart';

class Andamento extends StatefulWidget {
  @override
  _AndamentoState createState() => _AndamentoState();
}

class _AndamentoState extends State<Andamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.build, color: Colors.black),
                    title: Text('Computador com defeito'),
                    subtitle: Text('Computador não abre a tela inicial'),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        OutlineButton(
                          child: const Text('Finalizar'),
                          textColor: Colors.black,
                          borderSide: BorderSide(color: Colors.black),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
