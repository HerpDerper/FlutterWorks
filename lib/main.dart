import 'package:flutter/material.dart';
import 'package:flutter_application_1/mindDeepRelax.dart';
import 'package:flutter_application_1/medinow.dart';
import 'package:flutter_application_1/secretsOfAtlantis.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MindDeepRelax(),
    );
  }
}
