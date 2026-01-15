import 'package:biblia_sagrada/core/constants/constants.dart' show appBarTitleSize;
import 'package:biblia_sagrada/views/widgets/appbar_widget.dart' show AppbarWidget;
import 'package:flutter/material.dart';

class HarpaPage extends StatelessWidget {
  final String titulo;
  const HarpaPage({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: Text(titulo, style: TextStyle(fontSize: appBarTitleSize)),
      ),
    );
  }
}