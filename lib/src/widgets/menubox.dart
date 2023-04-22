import 'package:flutter/material.dart';

class MenuBox extends StatelessWidget {
  const MenuBox({super.key, required this.rota, required this.icone, required this.nomeCampo});
  final Widget rota;
  final IconData? icone;
  final String nomeCampo;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color.fromARGB(255, 229, 253, 255),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => rota));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white,),
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white, 
        ),
        padding: const EdgeInsets.all(14.0),
        child: Ink(
          decoration: const BoxDecoration(
            color: Colors.white,
            //shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //Icon(widget.icone);
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Icon(
                  icone,
                  size: 35,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Text(
                  nomeCampo,
                  style: const TextStyle(
                    color:  Color.fromARGB(220, 0, 59, 80),
                    fontSize: 20,
                    fontFamily: 'AristotelicaProDemiBold'
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
