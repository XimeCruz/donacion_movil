import 'package:flutter/material.dart';

import '../components/flecha_atras_model.dart';

class InformacionPModel extends ChangeNotifier {
  final unfocusNode = FocusNode();

  late FlechaAtrasModel flechaAtrasModel;

  bool isFavorito = false;

  void toggleFavorito() {
    isFavorito = !isFavorito;
    notifyListeners();
  }

  void initState(BuildContext context) {
    flechaAtrasModel = FlechaAtrasModel();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
