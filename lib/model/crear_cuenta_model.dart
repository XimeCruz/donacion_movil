import 'package:flutter/material.dart';

class CrearCuentaModel with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final unfocusNode = FocusNode();

  // Controladores y FocusNodes
  final fullNameTextController = TextEditingController();
  final fullNameFocusNode = FocusNode();

  final emailAddressTextController = TextEditingController();
  final emailAddressFocusNode = FocusNode();

  final passwordTextController = TextEditingController();
  final passwordFocusNode = FocusNode();
  bool passwordVisibility = false;

  // Validadores
  String? fullNameValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre completo es requerido';
    }
    return null;
  }

  String? emailValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El email es requerido';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val)) {
      return 'Tiene que ser una dirección de correo electrónico válida.';
    }
    return null;
  }

  String? passwordValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Contraseña requerida';
    }
    return null;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameTextController.dispose();
    fullNameFocusNode.dispose();
    emailAddressTextController.dispose();
    emailAddressFocusNode.dispose();
    passwordTextController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
