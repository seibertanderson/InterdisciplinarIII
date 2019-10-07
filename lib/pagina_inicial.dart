import 'package:flutter/material.dart';
import 'package:interdisciplinar/andamento.dart';
import 'package:interdisciplinar/concluido.dart';
import 'package:interdisciplinar/espera.dart';
import 'package:interdisciplinar/novo.dart';

void main() => runApp(MaterialApp());

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<Widget> containers = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("O Chamado"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Novo chamado",
              ),
              Tab(
                text: "Em espera",
              ),
              Tab(
                text: "Em andamento",
              ),
              Tab(
                text: "Concluídos",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Novo(),
            Espera(),
            Andamento(),
            Concluido(),
          ],
        ),
      ),
    );
  }
}
