
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: avatarSize,
                    height: avatarSize,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      'assets/images/IconBiblia.svg',
                      width: avatarSize,
                      height: avatarSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Biblía Sagrada",
                    style: TextStyle(fontSize: 24.0),
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
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Configurações",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text(
                    "Sobre o App",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text(
                    "Politica de Privacidade",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism),
                  title: Text(
                    "Contribuir com o App",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text(
                    "Suporte",
                    style: TextStyle(fontSize: 24.0),
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
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
