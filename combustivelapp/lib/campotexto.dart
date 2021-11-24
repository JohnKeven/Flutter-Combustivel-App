import 'package:flutter/material.dart';

class campotexto extends StatefulWidget {
  @override
  _campotextoState createState() => _campotextoState();
}

class _campotextoState extends State<campotexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Utilizando campo de texto"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: TextField(
                // text, number, emailAddress, datetime etc
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Digite um valor",
                ),
                //enabled: true,
                //maxLength: 255,
                //maxLengthEnforced: true
                /*style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),*/
                //obscureText: true, para senhas
                /*onChanged: (String texto) {
                  print("valor digitado: $texto");
                },*/
                onSubmitted: (String texto) {
                  print("valor digitado: $texto");
                },
                controller: _textEditingController,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("valor digitado: " + _textEditingController.text);
                },
                child: const Text("Salvar"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  onSurface: Colors.teal,
                )),
          ],
        ));
  }
}
