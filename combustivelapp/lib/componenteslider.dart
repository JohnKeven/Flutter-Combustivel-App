import 'package:flutter/material.dart';

class componenteslider extends StatefulWidget {
  @override
  _componentesliderState createState() => _componentesliderState();
}

class _componentesliderState extends State<componenteslider> {
  double _valor = 5;
  String _labelSlider = "Valor selecionado ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando Slider"),
      ),
      body: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
              value: _valor,
              min: 0,
              max: 10,
              label: _labelSlider,
              divisions: 5,
              activeColor: Colors.red,
              inactiveColor: Colors.blue,
              onChanged: (double novoValor) {
                setState(() {
                  _valor = novoValor;
                  _labelSlider = "Valor selecionado: " + _valor.toString();
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Valor salvo: " + _valor.toString());
              },
              child: const Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
