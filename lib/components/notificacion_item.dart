import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/notificacion.dart';

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
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    notificacion.titulo,
                    style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(notificacion.titulo),
                      content: Text(
                          '${notificacion.detalles} ${notificacion.fecha}'),
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
                },
                child: Text(
                  'Ver detalles',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4DB051), // Color verde
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize:
                      Size(double.infinity, 50), // Botón de ancho completo
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
