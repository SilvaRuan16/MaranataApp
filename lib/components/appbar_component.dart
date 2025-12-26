import 'package:biblia_sagrada/config.dart';
import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppbarComponent({super.key, required this.title, this.actions});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(title, style: TextStyle(color: textColor, fontSize: titleFontSize)),
      actions: [...actions ?? []],
      iconTheme: IconThemeData(color: iconColor),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
