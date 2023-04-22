import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:flutter/material.dart';

import '../widgets/mytextformfield.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 253, 255),
      appBar: MyAppBar(
        titulo: 'Registrar-se',
        showDrawer: false,
        showSave: false,
        showSearch: false,
        showBack: true,
        showNotifications: false,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(220, 0, 59, 80),
        child: IconTheme(
          data: const IconThemeData(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/home_page');
                  },
                  icon: const Icon(
                    Icons.restart_alt,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                IconButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/settings_page');
                  },
                  icon: const Icon(
                    Icons.save,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  //foregroundColor: Color.fromARGB(255, 204, 242, 244),
                  child: Image.asset('lib/assets/images/logo_icon_cor.png'),
                ),
                const SizedBox(
                  height: 40,
                ),
      
                Container(
                  color: Colors.white,
                  child: const MyTextFormField(
                    label: 'E-mail', 
                    hint: 'Digite seu e-mail',
                    icon: Icons.mail,
                  ),
                ),
      
                const SizedBox(
                  height: 15,
                ),
                
                Container(
                  color: Colors.white,
                  child: const MyTextFormField(
                    label: 'Usuário', 
                    hint: 'Digite seu nome de Usuario',
                    icon: Icons.person,
                  ),
                ),
      
                const SizedBox(
                  height: 15,
                ),
      
                Container(
                  color: Colors.white,
                  child: const MyTextFormField(
                    label: 'Celular', 
                    hint: 'Digite seu numero de celular',
                    icon: Icons.phone,
                  ),
                ),
      
                const SizedBox(
                  height: 15,
                ),
      
                Container(
                  color: Colors.white,
                  child: const MyTextFormField(
                    label: 'Senha', 
                    hint: 'Digite sua senha',
                    icon: Icons.key,
                  ),
                ),
      
                const SizedBox(
                  height: 15,
                ),
      
                Container(
                  color: Colors.white,
                  child: const MyTextFormField(
                    label: 'Confirme sua senha', 
                    hint: 'Digite sua senha novamente',
                    icon: Icons.key_off,
                  ),
                ),
      
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
