import 'package:portfolio_project1/src/pages/notificao_page.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
   const MyAppBar({
    Key? key,
    required this.titulo,
    required this.showDrawer,
    required this.showSave,
    required this.showSearch,
    required this.showBack,
    required this.showNotifications,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  
  final String titulo;
  final bool showSearch;
  final bool showDrawer;
  final bool showSave;
  final bool showBack;
  final bool showNotifications;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            //fontFamily: 'AristotelicaProDemiBold',
            fontSize: 23,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(220, 0, 59, 80),
      elevation: 0,
      leading: Row(
        children: [
          (showDrawer)
              ? Expanded(
                child: Container(
                  margin: EdgeInsets.all(7.0),
                  child: 
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Image.asset(
                        'lib/assets/images/logo_icon_cor.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
              )
              : Container(),
          showBack
              ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30,
                )
              : Container()
        ],
      ),
      actions: <Widget>[
        Row(
          children: [
            showSave
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.save),
                    iconSize: 30,
                  )
                : Container(),
            showSearch
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 30,
                  )
                : Container(),
            showNotifications
                ? IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificacaoPage()));
                    },
                    icon: const Icon(Icons.notifications),
                    iconSize: 30,
                  )
                : Container()
          ],
        )
      ],
    );
  }
}
