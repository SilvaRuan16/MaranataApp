import 'package:flutter/material.dart';
import 'package:maranata_app/components/appbar_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(title: 'Maranata App'),
      body: Center(child: Text("Estrutura do app criado com sucesso 😀")),
    );
  }
}