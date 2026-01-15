// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  // CRIA A CLASSE E HERDA AS FUNCIONALIDADES DA CLASSE CHANGENOTIFIER
  ThemeMode _themeMode = ThemeMode
      .system; // CRIA UMA VARIÁVEL PRIVADA E DEFINE O VALOR INICIAL DO TEMA DO SISTEMA

  ThemeMode get themeMode =>
      _themeMode; // CRIA UM GETTER PÚBLICO PARA LER O VALOR DA VARIÁVEL PRIVADA

  ThemeController() {
    _loadTheme();
  }

  /*
  bool get isDarkMode =>
      _themeMode ==
      ThemeMode.dark; // CRIA UM GETTER PARA CRIAR LÓGICAS RÁPIDAS DE TEMA NA UI
*/

  // MÉTODO PARA REALIZAR A MUDANÇA ENTRE TEMA CLARO E ESCURO
  // REALIZA UMA VERIFICAÇÃO DE TEMA E DEPOIS NOTIFICA O LISTENER DO PROVIDER
  void toggleTheme(bool isDarkMode) async {
    _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool('isDarkMode');

    if (isDarkMode != null) {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      notifyListeners();
    }
  }

  void switchTheme() {
    bool newMode = _themeMode != ThemeMode.dark;
    toggleTheme(newMode);
    print("Mudando tema");
  }
}
