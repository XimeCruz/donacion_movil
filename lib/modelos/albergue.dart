class Albergue {
  final int id;
  final String nombre;
  final String direccion;
  final int beneficiarioId;
  final String telefono;
  final String email;
  final String imagen;
  final double latitud;
  final double longitud;
  final int capacidad;
  final String descripcion;

  Albergue({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.beneficiarioId,
    required this.telefono,
    required this.email,
    required this.imagen,
    required this.latitud,
    required this.longitud,
    required this.capacidad,
    required this.descripcion,
  });

  factory Albergue.fromJson(Map<String, dynamic> json) {
    return Albergue(
      id: json['id'],
      nombre: json['nombre'],
      direccion: json['direccion'],
      beneficiarioId: json['beneficiarioId'],
      telefono: json['telefono'],
      email: json['email'],
      imagen: json['imagen'],
      latitud: json['latitud'],
      longitud: json['longitud'],
      capacidad: json['capacidad'],
      descripcion: json['descripcion'],
    );
  }
}