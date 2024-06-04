import 'dart:convert';

import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/notificacion.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

class NotificacionItemWidget extends StatelessWidget {
  final Notificacion notificacion;

  const NotificacionItemWidget({Key? key, required this.notificacion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notificación ID: ${notificacion.id}',
                    style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    notificacion.visto
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: notificacion.visto ? Colors.green : Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                notificacion.mensaje,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  final response = await http.get(
                    Uri.parse('${globals.globalUrl}/solicitud/ver-info-noti-donacion/${notificacion.id}'),
                  );

                  if (response.statusCode == 200) {
                    final data = jsonDecode(response.body);
                    final mensaje = data['mensaje'];
                    final donacion = data['donacion'];
                    final albergue = donacion['albergue'];
                    final beneficiario = donacion['beneficiario'];
                    final voluntarioRecojo = donacion['voluntarioRecojo'];

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Detalles de la Notificación'),
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Mensaje: $mensaje'),
                              Text('Albergue: ${albergue['nombre']}'),
                              Text('Dirección: ${albergue['direccion']}'),
                              Text('Beneficiario: ${beneficiario['nombre']}'),
                              Text('Voluntario de recojo: ${voluntarioRecojo['nombre']}'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Aceptar',
                              style: TextStyle(color: const Color(0xFF4DB051)),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Handle error
                  }
                },
                child: Text(
                  'Ver detalles',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4DB051),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
