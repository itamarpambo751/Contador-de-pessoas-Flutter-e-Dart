import 'package:flutter/material.dart';

void _onPressed () {}
void main() async {
  runApp(const MaterialApp(
    title: "Contador de Pessoas",
    home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Image.asset(
          "images/restaurant.webp",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        const Column(
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
      ],
    );
  }
}
