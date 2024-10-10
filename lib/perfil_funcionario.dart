import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil do Barbeiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BarberProfileScreen(),
    );
  }
}

class BarberProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil do Barbeiro'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Agenda diária
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Agenda Diária',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Exemplo de lista de agendamentos
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5, // Número de agendamentos
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Agendamento ${index + 1}'),
                  subtitle: Text('Horário: ${index + 9}:00 AM'),
                );
              },
            ),

            // Carteira Digital
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Carteira Digital',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Lucros Totais: R\$ 2000,00',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // Avaliações dos Clientes
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Avaliações dos Clientes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Exemplo de avaliações
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3, // Número de avaliações
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Cliente ${index + 1}'),
                  subtitle: Text('Avaliação: ${5 - index} estrelas'),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Editar Perfil',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            // Lógica para editar perfil
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfileScreen()),
            );
          }
        },
      ),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: Center(
        child: Text('Tela de Edição de Perfil'),
      ),
    );
  }
}
