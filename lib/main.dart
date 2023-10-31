import 'package:flutter/material.dart';

void _onPressed () {
  print("Adicionar");
}
void main() async {
  runApp(const MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text("Pessoas: 0", 
          style: TextStyle(color: Colors.blue),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed:_onPressed,
                child: Text("Adicionar"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed:_onPressed,
                child: Text("Remover"),
              ),
            ),
          ],
        ),
        Text("Pode entrar", 
          style: TextStyle(
            color: Colors.blue, 
            fontStyle: FontStyle.italic,
            fontSize: 30.0
          ),
        )
      ],
    ),
  ));
}
