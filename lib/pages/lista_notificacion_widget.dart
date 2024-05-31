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
    Notificacion(titulo: 'El albergue esperanza necesita de ti', fecha: '2023-05-30', detalles: 'Recoger productos del centro de operaciones'),
    // Notificacion(titulo: 'Notificación 2', fecha: '2023-05-29', detalles: 'Detalles de la notificación 2.'),
    // Agrega más notificaciones según sea necesario
  ];

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
                      'Notificaciones',
                      style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
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
