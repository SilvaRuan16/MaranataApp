// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class NavigationService {
  // METODO PARA DIRECIONAMENTO DA UI NO HOME_SCREEN
  static void navigateTo(BuildContext context, String rota) {
    switch (rota) {
      case 'Bíblia':
        Navigator.pushNamed(context, '/biblia');
        print("Clicado em biblia");
        break;
      case 'Harpa':
        Navigator.pushNamed(context, '/harpa');
        print("Clicado em harpa");
        break;
      case 'Devocional':
        Navigator.pushNamed(context, '/devocional');
        print("Clicado em devocional");
        break;
      case 'Áudio':
        Navigator.pushNamed(context, '/audio');
        print("Clicado em audio");
        break;
    }
  }
}
