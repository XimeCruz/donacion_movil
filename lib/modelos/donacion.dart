import 'package:donacion/modelos/albergue.dart';
import 'package:donacion/modelos/beneficiario.dart';

class Donacion {
  final int id;
  final Albergue albergue;
  final Beneficiario beneficiario;
  //final Voluntario voluntario;
  final bool aceptado;
  final bool asignado;
  final bool recojo;
  final String? entregado;
  final String? recibido;

  Donacion({
    required this.id,
    required this.albergue,
    required this.beneficiario,
    required this.aceptado,
    required this.asignado,
    required this.recojo,
    this.entregado,
    this.recibido,
  });

  factory Donacion.fromJson(Map<String, dynamic> json) {
    return Donacion(
      id: json['id'],
      albergue: Albergue.fromJson(json['albergue']),
      beneficiario: Beneficiario.fromJson(json['beneficiario']),
      //voluntario: Voluntario.fromJson(json['voluntario']),
      aceptado: json['aceptado'],
      asignado: json['asignado'],
      recojo: json['recojo'],
      entregado: json['entregado'],
      recibido: json['recibido'],
    );
  }
}
