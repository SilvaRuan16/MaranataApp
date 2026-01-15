import 'package:flutter/material.dart';

class BibleVersionSelector extends StatelessWidget {
  const BibleVersionSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),

      // Usa a cor de superfície do seu tema (Light ou Dark)
      color: Theme.of(context).colorScheme.surface,

      // Visual moderno com bordas arredondadas
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      onSelected: (String value) {
        // Lógica de seleção (Aqui você chamaria seu Controller/Provider)
        debugPrint("Versão selecionada: $value");
      },

      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: "ACF",
            child: Text("Almeida Corrigida Fiel"),
          ),
          const PopupMenuItem<String>(
            value: "NVI",
            child: Text("Nova Versão Internacional"),
          ),
          const PopupMenuItem<String>(
            value: "AA",
            child: Text("Almeida Atualizada"),
          ),
        ];
      },
    );
  }
}
