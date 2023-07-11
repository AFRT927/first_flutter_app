import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: const Home(),
));

/**
 * stateless Widgets:
 * the state of the widget cannot change over time
 * puede contener Data, pero esa data no puede
 * cambiar despues de que el widget ha sido
 * inicializado
 * 
 * stateful widgets:
 * the state of the widget can change over time
 * cualquier dato dentro del widget puede cambiar
 */
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('my first app'),
      centerTitle: true,
      backgroundColor : Colors.red[600],
    ),
  body: Row(
    children: <Widget>[
      Expanded(
        flex:5,
        child: Image.asset('assets/space1.jpeg')
        ),
      Expanded(
        flex: 3,
        child: Container(
          padding: EdgeInsets.all(30),
          color: Colors.cyan,
          child: Text('1')
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.all(30),
          color: Colors.pinkAccent,
          child: Text('2')
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(30),
          color: Colors.amber,
          child: Text('3')
        ),
      )
    ],
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: const Text('click'),
    backgroundColor: Colors.red[600],
  ),
  );
  }
}