import 'package:flutter/material.dart';

class FlutterFlowUtil {
  static void logFirebaseEvent(String name, {Map<String, dynamic>? parameters}) {
    // Implementa la lógica para registrar eventos aquí
    print('Evento registrado: $name');
  }
}

extension BuildContextX on BuildContext {
  TextScaler get textScaler => MediaQuery.of(this).textScaler;
}

extension NavigatorX on BuildContext {
  void pushNamed(String routeName) {
    Navigator.pushNamed(this, routeName);
  }
}
