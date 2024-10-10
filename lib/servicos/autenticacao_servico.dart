import 'package:firebase_auth/firebase_auth.dart';
import 'package:teste_barbearia/cadastro_funcionarios.dart';

class AutenticacaoServico {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  CadastroFuncionarioScreen({
  required String nomeController, 
  required String passwordController, 
  required String emailController, 
  required String telefoneController,
  }) {
    _firebaseAuth.createUserWithEmailAndPassword(
      email: emailController, 
      password: passwordController,
    );
  }
}