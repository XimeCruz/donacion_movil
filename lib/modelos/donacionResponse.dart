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

  factory Albergue.fromJson(Map<String, dynamic> json) {
    return Albergue(
      id: json['id'],
      nombre: json['nombre'],
      direccion: json['direccion'],
      telefono: json['telefono'],
      email: json['email'],
      imagen: json['imagen'],
      capacidad: json['capacidad'],
      descripcion: json['descripcion'],
    );
  }
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

  factory Beneficiario.fromJson(Map<String, dynamic> json) {
    return Beneficiario(
      id: json['id'],
      nombre: json['nombre'],
      correoElectronico: json['correoElectronico'],
      telefono: json['telefono'],
    );
  }
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

  factory DonacionResponse.fromJson(Map<String, dynamic> json) {
    return DonacionResponse(
      id: json['id'],
      albergue: Albergue.fromJson(json['albergue']),
      beneficiario: Beneficiario.fromJson(json['beneficiario']),
      aceptado: json['aceptado'],
      asignado: json['asignado'],
      recojo: json['recojo'],
      entregado: json['entregado'],
      recibido: json['recibido'] ,
    );
  }
}
