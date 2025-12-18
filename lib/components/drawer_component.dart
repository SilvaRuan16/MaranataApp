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
              decoration: BoxDecoration(color: Colors.brown),
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
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
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
                  leading: Icon(Icons.settings, color: Colors.black),
                  title: Text(
                    "Configurações",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Colors.black),
                  title: Text(
                    "Sobre o App",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip, color: Colors.black),
                  title: Text(
                    "Politica de Privacidade",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.volunteer_activism, color: Colors.black),
                  title: Text(
                    "Contribuir com o App",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.black),
                  title: Text(
                    "Suporte",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
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
              style: TextStyle(color: Colors.black, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
