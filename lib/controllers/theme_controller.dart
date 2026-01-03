import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {            // CRIA A CLASSE E HERDA AS FUNCIONALIDADES DA CLASSE CHANGENOTIFIER
  ThemeMode _themeMode = ThemeMode.system;                // CRIA UMA VARIÁVEL PRIVADA E DEFINE O VALOR INICIAL DO TEMA DO SISTEMA

  ThemeMode get themeMode => _themeMode;                  // CRIA UM GETTER PÚBLICO PARA LER O VALOR DA VARIÁVEL PRIVADA

  bool get isDarkMode => _themeMode == ThemeMode.dark;    // CRIA UM GETTER PARA CRIAR LÓGICAS RÁPIDAS DE TEMA NA UI

// MÉTODO PARA REALIZAR A MUDANÇA ENTRE TEMA CLARO E ESCURO
// REALIZA UMA VERIFICAÇÃO DE TEMA E DEPOIS NOTIFICA O LISTENER DO PROVIDER
  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
