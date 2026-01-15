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

  @override
  Widget build(BuildContext context) {
    if (hasScroll == false) {
      return SafeArea(
        child: Padding(padding: const EdgeInsets.all(16.0), child: child),
      );
    }

    return SafeArea(
      child: LayoutBuilder( /// CAPTURA A MEDIDA REAL DA TELA DO DISPOSITIVO
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox( /// DEFINI UM TAMANHO PARA A SINGLECHILDSCROLLVIEW
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight( /// PERMITE QUE O CHILD CALCULE O ESPAÇO RESTANTE PARA O SPACER
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: child,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
