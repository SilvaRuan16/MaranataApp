import 'package:biblia_sagrada/components/appbar_component.dart';
import 'package:biblia_sagrada/components/body_component.dart';
import 'package:biblia_sagrada/components/drawer_component.dart';
import 'package:biblia_sagrada/components/list_component.dart';
import 'package:biblia_sagrada/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: 'Biblia livre',
        actions: [
          SizedBox(
            width: 100,
            height: 100,
            child: PopupMenuButton<String>(
              icon: Icon(Icons.more_vert, color: iconColor),
              onSelected: null,
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem<String>(
                    value: "ACF",
                    child: Text("Almeida Corrigida Fiel"),
                  ),
                  PopupMenuItem<String>(
                    value: "NVI",
                    child: Text("Nova Versão Internacional"),
                  ),
                  PopupMenuItem<String>(
                    value: "AA",
                    child: Text("Almeida Atualizada"),
                  ),
                ];
              },
            ),
          ),
        ],
      ),
      drawer: DrawerComponent(),
      body: BodyComponent(
        child: ListComponent(),
        /**
         *         child: ColumnComponent(
          children: [
            CardComponent(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 100.0,
              backgroundColor: buttonColor,
              children: [
                Row(
                  children: [
                    Icon(Icons.book, size: 35.0, color: iconColor),
                    Expanded(
                      child: Text(
                        "Bem vindo ao nosso app!",
                        style: TextStyle(
                          fontSize: titleFontSize,
                          color: textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ButtonComponent(buttonText: "Testando", onPressed: () => {}),
          ],
        ),
         */
      ),
    );
  }
}
