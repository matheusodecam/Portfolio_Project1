import 'package:portfolio_project1/src/pages/clientes_tile_page.dart';
import 'package:portfolio_project1/src/pages/dentistas_tile_page.dart';
import 'package:portfolio_project1/src/pages/favoritos_page.dart';
import 'package:portfolio_project1/src/widgets/myappbar.dart';
import 'package:portfolio_project1/src/widgets/mybottomappbar.dart';
import 'package:portfolio_project1/src/widgets/menubox.dart';
import 'package:portfolio_project1/src/widgets/mydrawer.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 251, 255),
      appBar: MyAppBar(
        titulo: 'Pagina Inicial',
        showDrawer: true,
        showSave: false,
        showSearch: false,
        showBack: false,
        showNotifications: true,
      ),
      extendBody: true,
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(220, 0, 59, 80),
        onPressed: () {},
        child: const Icon(
          Icons.person,
          size: 30,
        ),
      ),*/
      bottomNavigationBar: const MyBottomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        // ignore: avoid_unnecessary_containers
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                padding: const EdgeInsets.all(30),
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                children: [
                  MenuBox(
                    rota: ClientsTilePage(),
                    icone: Icons.person_pin_outlined,
                    nomeCampo: 'Clientes',
                  ),
                  MenuBox(
                    rota: DentistasTilePage(),
                    icone: Icons.medical_services_outlined,
                    nomeCampo: 'Dentistas',
                  ),
                  MenuBox(
                    rota: FavoritosPage(),
                    icone: Icons.star,
                    nomeCampo: 'Favoritos',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                /*gradient: LinearGradient(
                  colors: [Colors.white, Colors.],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),*/
                color: Colors.white70,
                border: Border.all(
                  color: Color.fromARGB(220, 0, 72, 99),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 74),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black38,
                                width: 1.0,
                              ),
                            ),
                            margin:
                                EdgeInsets.only(top: 20, right: 10, left: 10),
                            child: CircleAvatar(
                              child: Image.asset(
                                  'lib/assets/images/matheus_mesquita_dev.png'),
                              radius: 70,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20, left: 5, right: 5, bottom: 2),
                            child: Text(
                              ' Matheus Mesquita',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(220, 0, 45, 61),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10, left: 10, right: 10, bottom: 5),
                            child: Text(
                              'Desenvolvedor Flutter',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Color.fromARGB(220, 0, 45, 61),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Acesse o codigo \ndo projeto aqui:',
                                  style: TextStyle(
                                      color: Color.fromARGB(242, 0, 41, 58),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.orange,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomLeft,
                                ),
                                color: Colors.white70,
                                border: Border.all(
                                  color: Color.fromARGB(220, 0, 72, 99),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: InkWell(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Image.asset(
                                      'lib/assets/images/github_logo.png'),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 10,bottom: 5, right: 5, left: 5),
                              child: Center(
                                child: Text(
                                  '\t\t\t\tAo acessar a pagina do \t\tprojeto, no GitHub, o usuário encontrará instruções de uso.',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                'PROJETO PARA PORTFÓLIO',style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      drawer: MyDrawer(),
    );
  }
}
