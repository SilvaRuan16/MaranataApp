import 'package:biblia_sagrada/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle,
    this.automaticallyImplyLeading,
    this.bottomTabBar,
  });

  final String title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool? automaticallyImplyLeading;
  final PreferredSizeWidget? bottomTabBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontSize: appBarTitleSize)),
      actions: [...actions ?? []],
      bottom: bottomTabBar,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      centerTitle: centerTitle ?? true,
    );
  }

  @override
  Size get preferredSize {
    double height = kToolbarHeight;
    if (bottomTabBar != null) {
      height += bottomTabBar!.preferredSize.height;
    }
    return Size.fromHeight(height);
  }
}
