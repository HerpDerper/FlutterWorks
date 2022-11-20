import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/data/repositories/auth_repository_implement.dart';
import 'package:flutter_application_1/domain/entity/roleEntity.dart';
import 'package:flutter_application_1/screens/admin_screen.dart';
import 'package:flutter_application_1/screens/signUp_screen.dart';
import 'package:flutter_application_1/screens/user_sceen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(179, 99, 141, 219),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
              child: Center(
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controllerLogin,
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Логин не должен быть пустым";
                          }
                          if (value.length < 8) {
                            return "Логин должен быть от 8 символов";
                          }
                          if (value.length >= 16) {
                            return "Логин должен быть до 16 символов";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Логин",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 5, 25, 20),
                      ),
                      TextFormField(
                        controller: controllerPassword,
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Пароль не должен быть пустым";
                          }
                          if (value.length < 8) {
                            return "Пароль должен быть от 8 символов";
                          }
                          if (value.length >= 16) {
                            return "Пароль должен быть до 16 символов";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Пароль",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (!key.currentState!.validate()) return;
                        final snackBar = SnackBar(
                          content: Text('Ошибка'),
                        );
                        var user = new AuthRepositoryImplementation().signIn(
                          controllerLogin.text,
                          controllerPassword.text,
                        );
                        user.then((value) {
                          if (value.isRight()) {
                            RoleEnum roleEnum =
                                value.getOrElse(() => RoleEnum.nobody);
                            switch (roleEnum) {
                              case RoleEnum.admin:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AdminScreen()));
                                break;
                              case RoleEnum.user:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const UserScreen()));
                                break;
                              case RoleEnum.nobody:
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                break;
                            }
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
                      },
                      child: const Text("Войти"),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text("Зарегистрироваться"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
