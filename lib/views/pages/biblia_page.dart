import 'package:biblia_sagrada/core/constants/constants.dart'
    show appBarTitleSize;
import 'package:biblia_sagrada/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class BibliaPage extends StatelessWidget {
  final String titulo;
  const BibliaPage({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: Text(titulo, style: TextStyle(fontSize: appBarTitleSize)),
      ),
    );
  }
}
