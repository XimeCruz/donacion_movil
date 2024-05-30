import 'package:flutter/material.dart';

import '../components/donacion_item.dart';
import '../flutter_flow/flutter_flow_theme.dart';


import '../modelos/donacionResponse.dart';

class DonacionesWidget extends StatefulWidget {
  const DonacionesWidget({Key? key}) : super(key: key);

  @override
  _DonacionesWidgetState createState() => _DonacionesWidgetState();
}

class _DonacionesWidgetState extends State<DonacionesWidget> {
  final List<DonacionResponse> donaciones = [
    DonacionResponse(
      id: 1,
      albergue: Albergue(
        id: 1,
        nombre: 'Albergue Esperanza',
        direccion: 'Av. Peru',
        telefono: '2458963',
        email: 'albergueesperanza@gmail.com',
        capacidad: 500,
        descripcion:
            'Ubicado en el corazón de la ciudad, el Albergue Refugio Urbano ofrece un oasis de tranquilidad y comodidad en medio del bullicio urbano.',
        imagen: '/images/casaorg.png'
      ),
      beneficiario: Beneficiario(
        id: 9,
        nombre: 'Admin',
        correoElectronico: 'Admin@gmail.com',
        telefono: '3148918702',
      ),
      aceptado: true,
      asignado: false,
      recojo: false,
      entregado: null,
      recibido: null,
    ),
    // Agrega más donaciones según sea necesario
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
                      'Donaciones',
                      style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Text(
                        'Lista de donaciones pedidas',
                        style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: donaciones.length,
                itemBuilder: (context, index) {
                  return DonacionItemWidget(
                    donacion: donaciones[index],
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
