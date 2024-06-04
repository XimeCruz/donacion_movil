import 'package:flutter/material.dart';

import '../modelos/donacion.dart';

class InformacionDonacionWidget extends StatelessWidget {
  final Donacion donacion;

  const InformacionDonacionWidget({Key? key, required this.donacion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de la Donación'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID Donación: ${donacion.id}',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              '${donacion.albergue.nombre}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Dirección: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: donacion.albergue.direccion,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black),
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
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: donacion.albergue.telefono,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black),
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
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: donacion.albergue.email,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black),
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
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: '${donacion.albergue.capacidad}',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black),
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
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: donacion.albergue.descripcion,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 16),
            // Text('Beneficiario: ${donacion.beneficiario.nombre}'),
            // Text('Email: ${donacion.beneficiario.correoElectronico}'),
            // Text('Teléfono: ${donacion.beneficiario.telefono}'),
            Divider(),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Aceptado: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  donacion.aceptado ? Icons.check : Icons.close,
                  color: donacion.aceptado ? Colors.green : Colors.red,
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
                  color: donacion.asignado ? Colors.green : Colors.red,
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
                  color: donacion.recojo ? Colors.green : Colors.red,
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
                  donacion.entregado != null ? Icons.check : Icons.close,
                  color: donacion.entregado != null ? Colors.green : Colors.red,
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
                  donacion.recibido != null ? Icons.check : Icons.close,
                  color: donacion.recibido != null ? Colors.green : Colors.red,
                ),
              ],
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main-beneficiario');
                },
                child: const Text('Realizar otro pedido de donacion'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF4DB051), // Color del texto
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  textStyle: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
