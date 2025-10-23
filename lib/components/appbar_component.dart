import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppbarComponent({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.brown,
      title: Text(title, style: TextStyle(color: Colors.grey.shade100)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}