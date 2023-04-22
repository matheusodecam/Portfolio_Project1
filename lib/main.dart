import 'package:portfolio_project1/src/pages/clientes_tile_page.dart';
import 'package:portfolio_project1/src/pages/dentistas_tile_page.dart';
import 'package:portfolio_project1/src/pages/detalhes_cliente_page.dart';
import 'package:portfolio_project1/src/pages/favoritos_page.dart';
import 'package:portfolio_project1/src/pages/notificao_page.dart';
import 'package:portfolio_project1/src/pages/registro_page.dart';
import 'package:portfolio_project1/src/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'src/pages/home_page.dart';
import 'src/pages/login_page.dart';
import 'src/pages/clientes_repository.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ClientesRepository(),
        )
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]
    );
    var usuario;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => const HomePage(),
        '/login_page': (context) => LoginPage(),
        '/registro_page': (context) => const RegistroPage(),
        '/settings_page': (context) => const SettingsPage(),
        '/notificacao_page': (context) => const NotificacaoPage(),
        '/detalhes_clientes_page': (context) => DetalhesClientePage(usuario: usuario,),
        '/clientes_tile_page': (context) => const ClientsTilePage(),
        '/dentistas_tile_page': (context) => const DentistasTilePage(),
        '/favoritos_page': (context) => const FavoritosPage(),
      },
      initialRoute: '/login_page',  
    );
  }
}