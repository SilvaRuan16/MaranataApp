import 'package:biblia_sagrada/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final double avatarSize = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: BoxDecoration(color: bodyColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: avatarSize,
                    height: avatarSize,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      'assets/images/iconDrawerHeader.svg',
                      width: avatarSize,
                      height: avatarSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Biblía Sagrada",
                    style: TextStyle(color: textColor, fontSize: titleFontSize),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.settings, color: iconColor),
                  title: Text(
                    "Configurações",
                    style: TextStyle(color: textColor, fontSize: textFontSize),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info, color: iconColor),
                  title: Text(
                    "Sobre o App",
                    style: TextStyle(color: textColor, fontSize: textFontSize),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip, color: iconColor),
                  title: Text(
                    "Politica de Privacidade",
                    style: TextStyle(color: textColor, fontSize: textFontSize),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism, color: iconColor),
                  title: Text(
                    "Contribuir com o App",
                    style: TextStyle(color: textColor, fontSize: textFontSize),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help, color: iconColor),
                  title: Text(
                    "Suporte",
                    style: TextStyle(color: textColor, fontSize: textFontSize),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Versão: 1.0.0+1",
              style: TextStyle(color: textColor, fontSize: subTextFontSize),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
