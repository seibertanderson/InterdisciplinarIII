import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Novo extends StatefulWidget {
  @override
  _NovoState createState() => _NovoState();
}

class _NovoState extends State<Novo> {
  var focusTitulo = new FocusNode();
  var focusDescricao = new FocusNode();

  TextEditingController titulo = TextEditingController();
  TextEditingController descricao = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(10),
      child: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              focusNode: focusTitulo,
              autofocus: true,
              textInputAction: TextInputAction.next,
              validator: (valor) {
                if (valor.isEmpty) {
                  FocusScope.of(context).requestFocus(focusTitulo);
                  return "Informe o Título";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Título", icon: Icon(Icons.assignment)),
              keyboardType: TextInputType.text,
              controller: titulo,
            ),
            TextFormField(
              focusNode: focusDescricao,
              autofocus: true,
              textInputAction: TextInputAction.next,
              validator: (valor) {
                if (valor.isEmpty) {
                  FocusScope.of(context).requestFocus(focusDescricao);
                  return "Informe a descrição";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Descrição", icon: Icon(Icons.bug_report)),
              keyboardType: TextInputType.text,
              controller: descricao,
            ),
            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  if (formkey.currentState.validate()) {
                    titulo.clear();
                    descricao.clear();
                    Firestore.instance
                        .collection("chamados")
                        .document()
                        .setData({
                      'titulo': titulo.text,
                      'descricao': descricao.text,
                    });
                    //setState(() {});
                  }
                }),
          ],
        ),
      ),
    ));
  }
}
