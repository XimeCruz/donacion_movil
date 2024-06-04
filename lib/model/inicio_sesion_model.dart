import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hive/hive.dart';
import '../globals.dart' as globals;

class InicioSesionModel with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final unfocusNode = FocusNode();

  // Controladores y FocusNodes
  final emailAddressTextController = TextEditingController();
  final emailAddressFocusNode = FocusNode();

  final passwordTextController = TextEditingController();
  final passwordFocusNode = FocusNode();
  bool passwordVisibility = false;

  InicioSesionModel();

  // Validadores
  String? emailValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo es requerido';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val)) {
      return 'Tiene que ser una dirección de correo electrónico válida.';
    }
    return null;
  }

  String? passwordValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña es requerida';
    }
    return null;
  }

  void togglePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
    notifyListeners();
  }

  Future<void> iniciarSesion(BuildContext context) async {
    if (formKey.currentState == null || !formKey.currentState!.validate()) {
      return;
    }

    final email = emailAddressTextController.text;
    final password = passwordTextController.text;

    print("email" + email + "pss" + password);

    final url = Uri.parse('${globals.globalUrl}/prueba/usuario');
    final headers = {'Content-Type': 'application/json'};
    final body = '{"email": "$email", "contrasenia": "$password"}';

    try {
      final response = await http.post(url, headers: headers, body: body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final int id = responseData['id'];
        final String tipoUsuario = responseData['rol'];
        print('User ID: $id');
        print('rol: $tipoUsuario');
        var box = Hive.box('myBox');
        await box.put('user_id', id);

        // Manejar respuesta exitosa y navegar a la nueva pantalla
        //Navigator.pushNamed(context, '/main-volun');
        //Navigator.pushNamed(context, '/main-beneficiario');

        // Redirigir a diferentes rutas según el rol del usuario
        if (tipoUsuario == 'BENEFICIARIO') {
          Navigator.pushNamed(context, '/main-beneficiario');
        } else if (tipoUsuario == 'VOLUNTARIO') {
          Navigator.pushNamed(context, '/main-volun');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Rol desconocido: $tipoUsuario')),
          );
        }
      } else {
        print(response.statusCode);
        if(response.statusCode == 404){
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Usuario no encontrado')),
          );
        }
        
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text('Error: ${response.body}')),
        // );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressTextController.dispose();
    emailAddressFocusNode.dispose();
    passwordTextController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
