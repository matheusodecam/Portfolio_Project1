import 'package:portfolio_project1/src/pages/clientes_repository.dart';
import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:portfolio_project1/src/widgets/mybottomappbar.dart';
import 'package:portfolio_project1/src/widgets/mylisttile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          titulo: 'Favoritos',
          showDrawer: false,
          showSave: false,
          showSearch: true,
          showBack: true,
          showNotifications: false),
      body: Container(child: Consumer<ClientesRepository>(
        builder: (context, favoritos, child) {
          return favoritos.lista.isEmpty
              ? ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Não tem nenhum cliente favorito'),
                )
              : ListView.builder(
                  itemCount: favoritos.lista.length,
                  itemBuilder: (_, index) {
                    return MyListTile(usuario: favoritos.lista[index],);
                  },);
        },
      ),),
      //bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
