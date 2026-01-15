// ignore_for_file: file_names

import 'package:flutter/material.dart' show IconData, Icons;

class IconHelper {
  static IconData getIcon(String iconName) {
    switch (iconName) {
      case 'Icons.menu_book_rounded':
        return Icons.menu_book_rounded;
      case 'Icons.music_note':
        return Icons.music_note;
      case 'Icons.auto_stories':
        return Icons.auto_stories;
      case 'Icons.headphones_outlined':
        return Icons.headphones_outlined;
      default:
        return Icons.help_outline_sharp;
    }
  }
}
