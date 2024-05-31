// ignore: unused_import
import 'package:flutter/material.dart';

class Notificacion {
  final String titulo;
  final String fecha;
  final String detalles;

  Notificacion({
    required this.titulo,
    required this.fecha,
    required this.detalles,
  });
}

// class Notificacion {
//   final int id;
//   final String mensaje;
//   final int? idDonacion;
//   final int? idProducto;
//   final bool visto;

//   Notificacion({
//     required this.id,
//     required this.mensaje,
//     this.idDonacion,
//     this.idProducto,
//     required this.visto,
//   });

//   factory Notificacion.fromJson(Map<String, dynamic> json) {
//     return Notificacion(
//       id: json['id'],
//       mensaje: json['mensaje'],
//       idDonacion: json['idDonacion'],
//       idProducto: json['idProducto'],
//       visto: json['visto'],
//     );
//   }
// }