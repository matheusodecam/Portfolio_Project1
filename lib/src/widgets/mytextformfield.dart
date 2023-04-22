import 'package:flutter/material.dart';
import 'package:portfolio_project1/src/data/dummy_servicos.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key, required this.label, required this.hint, this.icon, this.sicon});

  final String label;
  final String hint;
  final IconData? icon;
  final IconData? sicon;

  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      decoration: InputDecoration(
        //icon: IconData,
        hintStyle: const TextStyle(
          color: Color.fromARGB(220, 0, 59, 80),
          fontFamily: 'AristotelicaTextExtraLight',
          fontSize: 16,
        ),
        labelText: label,
        labelStyle: const TextStyle(
          color: Color.fromARGB(220, 0, 59, 80),
          fontFamily: 'AristotelicaTextExtraLight',  
        ),
        hintText: hint,
        prefixIcon: icon == null ? null : Icon(icon, color: const Color.fromARGB(220, 0, 59, 80),),
        suffixIcon: sicon == null ? null : Icon(sicon, size: 26, color: const Color.fromARGB(220, 0, 59, 80),),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(220, 0, 59, 80),
            //width: 4,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(220, 0, 59, 80),
        fontFamily: 'AristotelicaTextExtraLight',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
