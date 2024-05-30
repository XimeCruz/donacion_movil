import 'package:flutter/material.dart';

import '../components/notificacion_item.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/notificacion.dart';


class ListaNotificacionesWidget extends StatefulWidget {
  const ListaNotificacionesWidget({Key? key}) : super(key: key);

  @override
  _ListaNotificacionesWidgetState createState() => _ListaNotificacionesWidgetState();
}

class _ListaNotificacionesWidgetState extends State<ListaNotificacionesWidget> {
  final List<Notificacion> notificaciones = [
    Notificacion(titulo: 'Notificación 1', fecha: '2023-05-30', detalles: 'Detalles de la notificación 1.'),
    Notificacion(titulo: 'Notificación 2', fecha: '2023-05-29', detalles: 'Detalles de la notificación 2.'),
    // Agrega más notificaciones según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Notificaciones'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Notificaciones',
                  style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                        color: FlutterFlowTheme.of(context).labelLarge,
                      ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: notificaciones.length,
                itemBuilder: (context, index) {
                  return NotificacionItemWidget(
                    notificacion: notificaciones[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
