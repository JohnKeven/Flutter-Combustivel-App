import 'package:flutter/material.dart';

class componenteswitch extends StatefulWidget {
  @override
  _componenteswitchState createState() => _componenteswitchState();
}

class _componenteswitchState extends State<componenteswitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando Switch"),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              title: const Text("Receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_escolhaUsuario) {
                  print("Notificações ativadas");
                } else {
                  print("Notificações desativadas");
                }
              },
              child: const Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            /*Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ), 
            const Text("Receber notificações?"),*/
          ],
        ),
      ),
    );
  }
}
