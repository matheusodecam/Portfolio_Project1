import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:portfolio_project1/src/widgets/mybottomappbar.dart';
import 'package:portfolio_project1/src/widgets/mytextformfield.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 253, 255),
      appBar: MyAppBar(
        titulo: 'Configurações',
        showDrawer: false, 
        showSave: true,
        showSearch: false,
        showBack: true,
        showNotifications: false,
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(220, 0, 59, 80),
        onPressed: (){},
        child: const Icon(Icons.person, size: 30,),
      ),
      bottomNavigationBar: const MyBottomAppBar(),
      
    );
  }
}