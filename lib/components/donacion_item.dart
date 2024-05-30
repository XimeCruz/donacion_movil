import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/donacionResponse.dart';

class DonacionItemWidget extends StatelessWidget {
  final DonacionResponse donacion;

  const DonacionItemWidget({Key? key, required this.donacion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFf2f2f2), // Fondo plomo
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
                    'ID Donación: ${donacion.id}',
                    style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Aceptado: ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Icon(
                        donacion.aceptado ? Icons.check : Icons.close,
                        color: donacion.aceptado ? Colors.green : Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${donacion.albergue.nombre}',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Row(
                    children: [
                      Text(
                        'Asignado: ',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                      Icon(
                        donacion.asignado ? Icons.check : Icons.close,
                        color: donacion.asignado ? Colors.green : Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Detalles de la Donación'),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //Text('ID Donación: ${donacion.id}'),
                            Text(
                              '${donacion.albergue.nombre}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Center(
                              child: Image.asset(
                                'assets${donacion.albergue.imagen}',
                                height: 100.0,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Dirección: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: donacion.albergue.direccion,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Teléfono: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: donacion.albergue.telefono,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Email: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: donacion.albergue.email,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Capacidad: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '${donacion.albergue.capacidad}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Descripcion: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: donacion.albergue.descripcion,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            const SizedBox(height: 16.0),
                            /*Text(
                                'Beneficiario: ${donacion.beneficiario.nombre}'),
                            Text(
                                'Email: ${donacion.beneficiario.correoElectronico}'),
                            Text('Teléfono: ${donacion.beneficiario.telefono}'),
                            const SizedBox(height: 16.0),
                            Divider(),*/
                            Row(
                              children: [
                                Text(
                                  'Aceptado: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  donacion.aceptado ? Icons.check : Icons.close,
                                  color: donacion.aceptado
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Asignado: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  donacion.asignado ? Icons.check : Icons.close,
                                  color: donacion.asignado
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Recojo: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  donacion.recojo ? Icons.check : Icons.close,
                                  color: donacion.recojo
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Entregado: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  donacion.entregado != null
                                      ? Icons.check
                                      : Icons.close,
                                  color: donacion.entregado != null
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Recibido: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  donacion.recibido != null
                                      ? Icons.check
                                      : Icons.close,
                                  color: donacion.recibido != null
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Cerrar',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
