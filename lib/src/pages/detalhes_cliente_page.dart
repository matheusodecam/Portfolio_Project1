import 'package:portfolio_project1/src/models/clientes.dart';
import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:flutter/material.dart';

class DetalhesClientePage extends StatefulWidget {
  
  final Clientes usuario;
  
  const DetalhesClientePage({super.key, required this.usuario});

  @override
  State<DetalhesClientePage> createState() => _DetalhesClientePageState();
}

class _DetalhesClientePageState extends State<DetalhesClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titulo: widget.usuario.nome, showDrawer: false, showSave: false, showSearch: false, showBack: true, showNotifications: false),
      
    );
  }
}