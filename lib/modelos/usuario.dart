class Usuario {
  final String nombre;
  final String email;
  final String contrasenia;

  Usuario({
    required this.nombre,
    required this.email,
    required this.contrasenia,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nombre: json['nombre'],
      email: json['email'],
      contrasenia: json['contrasenia'],
    );
  }
}
