import 'package:flutter/material.dart';
import 'package:futter/components/appbar_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appbar: AppBarComponent(),
      body: Center(child: Text("Estrutura do app criado com sucesso 😀")),
    );
  }
}