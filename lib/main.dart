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
      backgroundColor: Colors.red[600],
    ),
  body: const Center(
    child: Image(
      image: NetworkImage('https://images.unsplash.com/photo-1608754482805-6f630357358b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3BhY2UlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&w=1000&q=80'),
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: const Text('click'),
    backgroundColor: Colors.red[600],
  ),
  );
  }
}