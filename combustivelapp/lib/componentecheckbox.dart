import 'package:flutter/material.dart';

class componentecheckbox extends StatefulWidget {
  @override
  _componentecheckboxState createState() => _componentecheckboxState();
}

class _componentecheckboxState extends State<componentecheckbox> {
  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando CheckBox"),
      ),
      body: Container(
          child: Column(
        children: [
          CheckboxListTile(
            title: const Text("Comida Brasileira"),
            subtitle: const Text("A melhor comida do mundo"),
            //activeColor: Colors.red,
            //secondary: const Icon(Icons.add_box),
            //selected: true,
            value: _comidaBrasileira,
            onChanged: (bool? valor) {
              setState(() {
                _comidaBrasileira = valor;
              });
            },
          ),
          CheckboxListTile(
            title: const Text("Comida Mexicana"),
            subtitle: const Text("Comida bem apimentada"),
            //activeColor: Colors.red,
            //secondary: const Icon(Icons.add_box),
            //selected: true,
            value: _comidaMexicana,
            onChanged: (bool? valor) {
              setState(() {
                _comidaMexicana = valor;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              print("Comida brasileira " +
                  _comidaBrasileira.toString() +
                  " Comida mexicana " +
                  _comidaMexicana.toString());
            },
            child: const Text(
              "Salvar",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          /*const Text("Comida Brasileira"),
          Checkbox(
            value: _estaSelecionado,
            onChanged: (bool? valor) {
              setState(() {
                _estaSelecionado = valor;
              });
            },
          ),*/
        ],
      )),
    );
  }
}
