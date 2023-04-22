import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/clientes.dart';

class ClientesRepository extends ChangeNotifier {
  final List<Clientes> _lista = [];

  UnmodifiableListView<Clientes> get lista => UnmodifiableListView(_lista);

  saveAll(List<Clientes> users) {
    for (var user in users) {
      if (!_lista.contains(user)) _lista.add(user);
    }
    notifyListeners();
  }

  remove(Clientes users) {
    _lista.remove(users);
    notifyListeners();
  }
}
