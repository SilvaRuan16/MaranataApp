import 'package:biblia_sagrada/config.dart';
import 'package:flutter/material.dart';

/**
 * Este arquivo representa um componente cujo será utilizado como o corpo base
 * da aplicação, podendo ser customizado futuramente.
 * Por padrão, ele terá um scroll para suportar os conteúdos que vazarem
 * na tela do dispositivo.
 */

class BodyComponent extends StatelessWidget {
  const BodyComponent({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: bodyColor,
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsetsGeometry.all(16.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
