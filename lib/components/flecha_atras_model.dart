import 'package:flutter/material.dart';

class FlechaAtrasModel with ChangeNotifier {
  void initState(BuildContext context) {
    // Inicializa cualquier estado necesario aquí
  }

  // Si necesitas notificar cambios en el estado, puedes usar notifyListeners()
  void update() {
    notifyListeners();
  }
}
