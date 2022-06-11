import 'package:crud/screens/add_pessoa.dart';
import 'package:crud/screens/atualizarcadastro.dart';
import 'package:crud/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(const CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/dashboard', page: () => const Dashboard()),
        GetPage(name: '/cadastrarPessoa', page: () => const CadastrarPessoa()),
        GetPage(name: '/atualizarPessoa', page: () => const AtualizarPessoa()),
      ],
    );
  }
}
