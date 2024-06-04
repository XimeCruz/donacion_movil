class Voluntario {
  final int id;
  final String nombre;
  final String nombreUsuario;
  final String correoElectronico;
  final String telefono;
  final String password;
  final bool? passwordValid;
  final int activo;
  final String fechaDeNacimiento;
  final String? direccion;
  final String rol;

  Voluntario({
    required this.id,
    required this.nombre,
    required this.nombreUsuario,
    required this.correoElectronico,
    required this.telefono,
    required this.password,
    this.passwordValid,
    required this.activo,
    required this.fechaDeNacimiento,
    this.direccion,
    required this.rol,
  });

  factory Voluntario.fromJson(Map<String, dynamic> json) {
    return Voluntario(
      id: json['id'],
      nombre: json['nombre'],
      nombreUsuario: json['nombreUsuario'],
      correoElectronico: json['correoElectronico'],
      telefono: json['telefono'],
      password: json['password'],
      passwordValid: json['passwordValid'],
      activo: json['activo'],
      fechaDeNacimiento: json['fechaDeNacimiento'],
      direccion: json['direccion'],
      rol: json['rol'],
    );
  }
}