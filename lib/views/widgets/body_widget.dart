import 'package:flutter/material.dart';

/// Este arquivo representa um componente cujo será utilizado como o corpo base
/// da aplicação, podendo ser customizado futuramente.
/// Por padrão, ele terá um scroll para suportar os conteúdos que vazarem
/// na tela do dispositivo.

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key, required this.child, this.hasScroll = true});
  final Widget child;

  // A INTERFACE POR PADRÃO VAI TER O SINGLECHILDSCROLLVIEW PARA DEIXAR UMA BARRA DE ROLAGEM EM CONTEÚDOS COMO BOTÕES, TEXTOS ENTRE OUTROS. CASO A INTERFACE PRECISE PEGAR DADOS DE UMA REQUISIÇÃO, ELA VAI REMOVER O SINGLECHILDSCROLLVIEW PARA QUE SEJA POSSÍVEL INSERIR UMA LISTVIEW.BUILDER NO CHILD DO COMPONENTE, PARA QUE NÃO HAJA PROBLEMA DE PERFORMANCE POR CARREGAR DUAS LISTAS. ALÉM DE CONSEGUIR INSERIR UMA LISTA COM DADOS CAPTURADOS DE UMA REQUISIÇÃO.
  final bool? hasScroll;

  Widget _buildBody(BuildContext context) {
    return SafeArea(child: Padding(padding: const EdgeInsetsGeometry.all(16.0), child: child));
  }

  @override
  Widget build(BuildContext context) {
    final body = _buildBody(context);
    return hasScroll! ? SingleChildScrollView(child: body) : body;
  }
}
