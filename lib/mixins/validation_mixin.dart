import 'package:portfolio_project1/src/pages/clientes_tile_page.dart';
import 'package:portfolio_project1/src/data/dummy_clientes.dart';

import '../src/models/clientes.dart';

final listaClientes = DummyClientesLista.DUMMY_CLIENTS;

mixin ValidationMixin {
  String? isNotEmpty(String? value, [String? message]){
    if(value!.isEmpty) return "Campo vazio";
    return null;
  } 

  String? userValidator(String? user){
    for(int i = 0; i < listaClientes.length; i++){
      if(user! == listaClientes[i].username){
        return null;
      } 
    }
    return 'Usuario não encontrado';
  }

  String? senhaValidator(String? user){
    for(int i = 0; i < listaClientes.length; i++){
      if(user! == listaClientes[i].senha){
        return null;
      } 
    }
    return 'Senha invalida';
  }

  String? combine(List<String? Function()> validator){
    for (final  func in validator){
      final validator = func();
      if (validator != null) return validator;
    }
    return null;
  }

  /*saveAll(List<Clientes> users) {
    for (var user in users) {
      if (!_lista.contains(user)) _lista.add(user);
    }
    notifyListeners();
  }*/

}