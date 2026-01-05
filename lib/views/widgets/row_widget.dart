import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final List<Widget> children;
  const RowWidget({super.key, required this.children});
  @override Widget build(BuildContext context) {
    return Row( children: children );
  }
}
