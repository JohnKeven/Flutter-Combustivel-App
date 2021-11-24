import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite números maiores que 0 e utilizando (.)";
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina!!";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com Álcool!!";
        });
      }
      _limparCampos();
    }
  }

  void _limparCampos() {
    _controllerAlcool.text = "";
    _controllerGasolina.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Combustível"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Image.asset("images/logo.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço do Álcool, ex: 1.59",
                ),
                style: const TextStyle(
                  fontSize: 18,
                ),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço da Gasolina, ex: 4.60",
                ),
                style: const TextStyle(
                  fontSize: 18,
                ),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: _calcular,
                  child: const Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white,
                    onSurface: Colors.teal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  _textoResultado,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
