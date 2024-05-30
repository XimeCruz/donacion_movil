class Albergue {
  final int id;
  final String nombre;
  final String direccion;
  final String telefono;
  final String email;
  final String imagen;
  final int capacidad;
  final String descripcion;

  Albergue({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.imagen,
    required this.telefono,
    required this.email,
    required this.capacidad,
    required this.descripcion,
  });
}

class Beneficiario {
  final int id;
  final String nombre;
  final String correoElectronico;
  final String telefono;

  Beneficiario({
    required this.id,
    required this.nombre,
    required this.correoElectronico,
    required this.telefono,
  });
}

class DonacionResponse {
  final int id;
  final Albergue albergue;
  final Beneficiario beneficiario;
  final bool aceptado;
  final bool asignado;
  final bool recojo;
  final String? entregado;
  final String? recibido;

  DonacionResponse({
    required this.id,
    required this.albergue,
    required this.beneficiario,
    required this.aceptado,
    required this.asignado,
    required this.recojo,
    this.entregado,
    this.recibido,
  });
}
