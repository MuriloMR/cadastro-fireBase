import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teste_barbearia/cadastro_funcionarios.dart'; // ajuste o caminho se necessário

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BarbeariaApp());
}
