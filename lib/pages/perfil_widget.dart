import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class PerfilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Perfil',
                      style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Nombre completo',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200], // Fondo plomo
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Ingrese nombre completo',
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Cambiar contraseña',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Recibirás un mensaje para cambiar tu contraseña.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Acción para cambiar contraseña
                        Navigator.pushNamed(context, '/olvido-contrasenia');
                      },
                      child: Text(
                        'Cambiar contraseña',
                        style: TextStyle(
                            color: Colors.white), // Color de texto blanco
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4DB051), // Color verde
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(
                            double.infinity, 50), // Botón de ancho completo
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Eliminar cuenta',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tu cuenta será eliminada definitivamente y no podrás recuperarla.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Acción para eliminar cuenta
                      },
                      child: Text(
                        'Eliminar cuenta',
                        style: TextStyle(
                            color: Color(0xFFc96e6e)), // Color de texto blanco
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFffd4d4), // Color rojo
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(
                            double.infinity, 50), // Botón de ancho completo
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Cerrar sesión',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Puedes entrar con otra cuenta si deseas',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Acción para cambiar contraseña
                        Navigator.pushNamed(context, '/inicio-sesion');
                      },
                      child: Text(
                        'Cerrar sesión',
                        style: TextStyle(
                            color: Colors.white), // Color de texto blanco
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4DB051), // Color verde
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(
                            double.infinity, 50), // Botón de ancho completo
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
