import 'package:flutter/material.dart';

import '../models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;
  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  bool get existeUsuario => (_usuario != null) ? true : false;

  void removerUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

}
