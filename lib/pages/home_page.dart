import 'package:flutter/material.dart';
import 'package:maranata_app/components/appbar_component.dart';
import 'package:maranata_app/components/body_component.dart';
import 'package:maranata_app/components/button_component.dart';
import 'package:maranata_app/components/drawer_component.dart';
import 'package:maranata_app/components/column_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: 'Maranata',
        actions: [
          SizedBox(
            width: 100,
            height: 100,
            child: PopupMenuButton<String>(
              icon: Icon(Icons.more_vert, color: Colors.grey.shade100),
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
        child: ColumnComponent(
          children: [
            Text('Deliver features faster'),
            Text('Craft beautiful UIs'),
            Icon(Icons.book),
            ButtonComponent(buttonText: "Testando", onPressed: ()=>{}, )
          ],
        ),
      ),
    );
  }
}