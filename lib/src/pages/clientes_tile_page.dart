import 'package:portfolio_project1/src/models/clientes.dart';
import 'package:portfolio_project1/src/pages/clientes_repository.dart';
import 'package:portfolio_project1/src/pages/detalhes_cliente_page.dart';
import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:portfolio_project1/src/widgets/mybottomappbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/dummy_clientes.dart';

class ClientsTilePage extends StatefulWidget {
  const ClientsTilePage({super.key});

  @override
  State<ClientsTilePage> createState() => _ClientsTilePageState();
}

class _ClientsTilePageState extends State<ClientsTilePage> {
  List<Clientes> selecionados = [];
  late ClientesRepository favoritos;
  detalhesCliente(Clientes user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetalhesClientePage(usuario: user),
      ),
    );
  }

  limparSelecionados() {
    setState(() {
      selecionados = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaClientes = DummyClientesLista.DUMMY_CLIENTS;
    favoritos = context.watch<ClientesRepository>();

    appBarDinamica() {
      if (selecionados.isNotEmpty) {
        return AppBar(
          leading: IconButton(
            onPressed: () {
              limparSelecionados();
            },
            icon: const Icon(
              Icons.highlight_remove_sharp,
              size: 30,
            ),
          ),
        );
      } else {
        return MyAppBar(
          titulo: 'Clientes',
          showDrawer: false,
          showSave: false,
          showSearch: true,
          showBack: true,
          showNotifications: false,
        );
      }
    }

    return Scaffold(
      appBar: appBarDinamica(),
      bottomNavigationBar: MyBottomAppBar(),
      floatingActionButton: selecionados.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {
                favoritos.saveAll(selecionados);
                limparSelecionados();
              },
              icon: Icon(Icons.star),
              label: Text(
                'FAVORITAR',
                style: TextStyle(
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.separated(
        itemBuilder: (BuildContext context, int user) {
          return ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: (selecionados.contains(listaClientes[user]))
                ? const CircleAvatar(
                    child: Icon(
                      Icons.check,
                      color: Color.fromARGB(220, 0, 59, 80),
                    ),
                  )
                : CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 229, 253, 255),
                    child: (listaClientes[user].avatar.isEmpty)
                        ? const Icon(Icons.person)
                        : Image.network(listaClientes[user].avatar)),
            title: Row(
              children: [
                Text(listaClientes[user].nome),
                SizedBox(
                  width: 5,
                ),
                if(favoritos.lista.contains(listaClientes[user]))
                  Icon(Icons.star, color: Colors.amber[600], size: 14,)
              ],
            ),
            subtitle: Text(
              'Email: ${listaClientes[user].email}',
              style: TextStyle(fontSize: 12),
            ),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    Provider.of<ClientesRepository>(context, listen: false)
                            .remove(listaClientes[user]);
                    listaClientes.remove(listaClientes[user]);
                    
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.orange[200],
                  size: 30,
                )),
            selected: selecionados.contains(listaClientes[user]),
            selectedTileColor: Colors.teal[100],
            selectedColor: Colors.black,
            //textColor: Colors.black,
            onLongPress: () {
              setState(() {
                (selecionados.contains(listaClientes[user]))
                    ? selecionados.remove(listaClientes[user])
                    : selecionados.add(listaClientes[user]);
              });
            },
            onTap: () {
              detalhesCliente(listaClientes[user]);
            },
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: listaClientes.length,
      ),
    );
  }
}
