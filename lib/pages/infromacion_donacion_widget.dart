import 'package:flutter/material.dart';

import '../modelos/donacion.dart';

class InformacionDonacionWidget extends StatelessWidget {
  final Donacion donacion;

  const InformacionDonacionWidget({Key? key, required this.donacion}) : super(key: key);

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
            Text('ID Donación: ${donacion.id}', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Albergue: ${donacion.albergue.nombre}'),
            Text('Dirección: ${donacion.albergue.direccion}'),
            Text('Teléfono: ${donacion.albergue.telefono}'),
            Text('Email: ${donacion.albergue.email}'),
            Text('Capacidad: ${donacion.albergue.capacidad}'),
            Text('Descripción: ${donacion.albergue.descripcion}'),
            // SizedBox(height: 16),
            // Text('Beneficiario: ${donacion.beneficiario.nombre}'),
            // Text('Email: ${donacion.beneficiario.correoElectronico}'),
            // Text('Teléfono: ${donacion.beneficiario.telefono}'),
            SizedBox(height: 16),
            Text('Aceptado: ${donacion.aceptado ? "Sí" : "No"}'),
            Text('Asignado: ${donacion.asignado ? "Sí" : "No"}'),
            Text('Recojo: ${donacion.recojo ? "Sí" : "No"}'),
            Text('Entregado: ${donacion.entregado ?? "No"}'),
            Text('Recibido: ${donacion.recibido ?? "No"}'),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'main-beneficiario'
                  );
                },
                child: Text('Realizar otro pedido de donacion'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0xFF4DB051), // Color del texto
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
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
