import 'package:portfolio_project1/src/pages/clientes_tile_page.dart';
import 'package:portfolio_project1/src/pages/dentistas_tile_page.dart';
import 'package:portfolio_project1/src/pages/favoritos_page.dart';
import 'package:portfolio_project1/src/pages/home_page.dart';
import 'package:portfolio_project1/src/pages/notificao_page.dart';
import 'package:portfolio_project1/src/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(220, 0, 59, 80),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Projeto 1 - Portfólio',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Versao 1.0',
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Esta é a primeira versão deste projeto. É uma versão de teste, onde a maioria das funciona- lidades foram implementadas com intuito de demonstrar as minhas skills em Flutter.',
                  style: TextStyle(color: Colors.white54, fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Lista de Clientes'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ClientsTilePage()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Favoritos'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FavoritosPage()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.medical_services),
            title: Text('Lista de Dentistas'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DentistasTilePage()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificações'),
            onTap: () {
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NotificacaoPage()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
