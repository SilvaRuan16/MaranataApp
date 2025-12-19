import 'package:flutter/widgets.dart';

class ColumnComponent extends StatelessWidget {
  final List<Widget> children;
  const ColumnComponent({ super.key, required this.children });
  @override Widget build(BuildContext context) {
    return Column( children: children );
  }
}
