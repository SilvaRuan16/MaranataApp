
// ignore_for_file: avoid_print, unused_import

import 'package:biblia_sagrada/services/system/navigation_service.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              child: Center(
                child: Text(
                    "Biblía Sagrada",
                    style: TextStyle(fontSize: 24.0),
                  ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Configurações",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/config');
                    print("Clicado em Configurações");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text(
                    "Sobre o App",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text(
                    "Politica de Privacidade",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism),
                  title: Text(
                    "Contribuir com o App",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text(
                    "Suporte",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Versão: 1.0.0+1",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
