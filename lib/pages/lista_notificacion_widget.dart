import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../components/notificacion_item.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/notificacion.dart';
import '../globals.dart' as globals;

class ListaNotificacionesWidget extends StatefulWidget {
  const ListaNotificacionesWidget({Key? key}) : super(key: key);

  @override
  _ListaNotificacionesWidgetState createState() => _ListaNotificacionesWidgetState();
}

class _ListaNotificacionesWidgetState extends State<ListaNotificacionesWidget> {
  List<Notificacion> notificaciones = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchNotificaciones();
  }

  Future<void> fetchNotificaciones() async {
    try {
      final response = await http.get(Uri.parse('${globals.globalUrl}/solicitud/ver-notificaciones'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        setState(() {
          notificaciones = jsonData.map((json) => Notificacion.fromJson(json)).toList();
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load notificaciones');
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
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
            Expanded(
              child: ListView.builder(
                itemCount: notificaciones.length,
                itemBuilder: (context, index) {
                  return NotificacionItemWidget(
                    notificacion: notificaciones[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
