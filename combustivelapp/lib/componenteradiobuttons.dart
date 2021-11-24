import 'package:flutter/material.dart';

class componenteradiobuttons extends StatefulWidget {
  @override
  _componenteradiobuttonsState createState() => _componenteradiobuttonsState();
}

class _componenteradiobuttonsState extends State<componenteradiobuttons> {
  int? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando radio buttons"),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            RadioListTile(
              title: const Text("Masculino"),
              value: 1,
              groupValue: _escolhaUsuario,
              onChanged: (int? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: const Text("Feminino"),
              value: 2,
              groupValue: _escolhaUsuario,
              onChanged: (int? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Resultado: $_escolhaUsuario");
              },
              child: const Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            /*const Text("Masculino"),
            Radio(
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: $escolha");
              },
            ),
            const Text("Feminino"),
            Radio(
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: $escolha");
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
