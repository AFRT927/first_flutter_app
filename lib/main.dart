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
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
     Text('hello'),
     TextButton(
       onPressed: (){},
       child: Text('click me'),
       ),
       Container(
        color: Colors.cyan,
        padding: EdgeInsets.all(20),
        child: Text('inside Container'),
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