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
  body: Column( 
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget> [
        Container(
          color: Colors.black,
          child: Row(          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Text(
              'hellow',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30.0
              )           
              ),
            Text(
              'about us',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30.0
              )
              ),
            Text(
              'prices',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30.0
              )
              )
          ],
        ),
        ),
        Container(
        margin: EdgeInsets.all(10),
        child: Text(
          'container 1',
          textAlign: TextAlign.center,
          ),
        color: Colors.cyan,
        padding: EdgeInsets.symmetric(vertical: 100),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Text(
          'container 2',
          textAlign: TextAlign.center,
          ),
        color: Colors.amberAccent,
        padding: EdgeInsets.symmetric(vertical: 100),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Text(
          'container 3',
          textAlign: TextAlign.center,
          ),
        color: Colors.greenAccent,
        padding: EdgeInsets.symmetric(vertical: 100),
      )
    ]
     
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: const Text('click'),
    backgroundColor: Colors.red[600],
  ),
  );
  }
}