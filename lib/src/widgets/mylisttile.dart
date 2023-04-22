import 'package:portfolio_project1/src/pages/clientes_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/clientes.dart';

class MyListTile extends StatefulWidget {
  final Clientes usuario;
  const MyListTile({super.key, required this.usuario});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Card(
      margin: EdgeInsets.only(top: 12),
      elevation: 1,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
          child: Row(
            children: [
              CircleAvatar(
                child: (widget.usuario.avatar.isEmpty)
                        ? const Icon(Icons.person)
                        : Image.network(widget.usuario.avatar)
              ),
             
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.usuario.nome,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.usuario.email!,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('Remover das Favoritas'),
                      onTap: () {
                        Navigator.pop(context);
                        Provider.of<ClientesRepository>(context, listen: false)
                            .remove(widget.usuario);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
