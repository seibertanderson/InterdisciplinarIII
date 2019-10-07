import 'package:flutter/material.dart';
import 'package:interdisciplinar/andamento.dart';

class Espera extends StatefulWidget {
  @override
  _EsperaState createState() => _EsperaState();
}

class _EsperaState extends State<Espera> {
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
                    leading: Icon(Icons.watch_later, color: Colors.red),
                    title: Text('Computador com defeito'),
                    subtitle: Text('Computador não abre a tela inicial'),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        OutlineButton(
                          child: const Text('Resolver'),
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
