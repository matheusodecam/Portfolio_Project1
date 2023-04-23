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
      appBar: MyAppBar(
          titulo: widget.usuario.nome,
          showDrawer: false,
          showSave: false,
          showSearch: false,
          showBack: true,
          showNotifications: false),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                  border: Border.all(
                    color: Colors.black38,
                    width: 4.0,
                  ),
                ),
                //color: Colors.green,
                margin: EdgeInsets.only(top: 60, bottom: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  //foregroundColor: Color.fromARGB(255, 204, 242, 244),
                  child: (widget.usuario.avatar != null ||
                          widget.usuario.avatar.isNotEmpty)
                      ? Container(
                          padding: EdgeInsets.all(15),
                          child: Image.network(widget.usuario.avatar))
                      : Container(
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.person)),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black38,
                        width: 4.0,
                      )),
                  //height: 500,
                  //width: 100,
                  //color: Colors.red,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Text(
                          'Cliente:',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ), 
                        trailing: Text(
                          widget.usuario.nome,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ListTile(
                        leading: Icon(Icons.edit_note_sharp, size: 35,),
                        title: Text(
                          widget.usuario.username,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ListTile(
                        leading: Icon(Icons.mail, size: 30,),
                        title: Text(
                          widget.usuario.email,
                          style: TextStyle(
                              fontSize: 15),
                        ),
                        /*trailing: Text(
                          widget.usuario.email,
                          style: TextStyle(fontSize: 15),
                        ),*/
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
