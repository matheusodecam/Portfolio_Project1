import 'package:portfolio_project1/src/models/dentista.dart';
import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:portfolio_project1/src/widgets/mybottomappbar.dart';
import 'package:flutter/material.dart';

import '../data/dummy_dentistas.dart';

class DentistasTilePage extends StatefulWidget {
  const DentistasTilePage({super.key});

  @override
  State<DentistasTilePage> createState() => _DentistasTilePageState();
}

class _DentistasTilePageState extends State<DentistasTilePage> {
  List<Dentista> selecionados = [];
  @override
  Widget build(BuildContext context) {
    final listaDentistas = DummyDentistasLista.DUMMY_DENTISTAS;
    
    appBarDinamica(){
      if(selecionados.isNotEmpty){
        return MyAppBar(
          titulo: '',
          showBack: false,
          showDrawer: false,
          showNotifications: false,
          showSave: false,
          showSearch: false,
        );
      }else {
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
      bottomNavigationBar: const MyBottomAppBar(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int user) {
          return ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: (selecionados.contains(listaDentistas[user]))
                ? const CircleAvatar(
                    child: Icon(Icons.check, color: Color.fromARGB(220, 0, 59, 80),),
                  )
                : CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 229, 253, 255),
                    child: (listaDentistas[user].avatar.isEmpty)
                        ? const Icon(Icons.person)
                        : Image.network(listaDentistas[user].avatar)),
            title: Text(listaDentistas[user].nome),
            subtitle: Text('Senha: ${listaDentistas[user].cro}'),
            trailing: Text('''
                C.R.O.: 
            ${listaDentistas[user].cro}'''),
            selected: selecionados.contains(listaDentistas[user]),
            selectedTileColor: Colors.teal[100],
            selectedColor: Colors.black,
            //textColor: Colors.black,
            onLongPress: () {
              setState(() {
                (selecionados.contains(listaDentistas[user]))
                    ? selecionados.remove(listaDentistas[user])
                    : selecionados.add(listaDentistas[user]);
              });
            },
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: listaDentistas.length,
      ),
    );
  }
}
