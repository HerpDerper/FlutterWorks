import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/db/data_base_helper.dart';
import 'package:flutter_application_1/screens/signIn_screen.dart';
import 'package:flutter_application_1/screens/signUp_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataBaseHelper dataBaseHelper = DataBaseHelper.instance;
    dataBaseHelper.init();
    return const MaterialApp(
      home: SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
