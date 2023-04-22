import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:portfolio_project1/src/widgets/mybottomappbar.dart';
import 'package:flutter/material.dart';

class NotificacaoPage extends StatelessWidget {
  const NotificacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titulo: 'Notificações', showDrawer: false, showSave: false, showSearch: false, showBack: true, showNotifications: false),
      bottomNavigationBar: MyBottomAppBar(),
      body: Center(
        child: Text('PAGINA DAS NOTIFICACOES'),
      ),
    );
  }
}