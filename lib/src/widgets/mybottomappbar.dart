import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 70,
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(220, 0, 59, 80),
        child: IconTheme(
          data: const IconThemeData(
            color: Colors.white, 
          ), 
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home_page');
                  }, 
                  icon: const Icon(Icons.home, size: 30,),
                ),
                const SizedBox(
                  width: 24,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings_page');
                  }, 
                  icon: const Icon(Icons.settings, size: 30,),
                ),
              ],
            ),
          ),
        ),  
      ),
    );
  }
}