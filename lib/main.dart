import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('my first app'),
      centerTitle: true,
      backgroundColor: Colors.black,
    ),
  body: const Center(
    child: Text('hello ninjas'),
  ),
  ),
));