class Donante {
  final int id;
  final String nombre;
  final String nombreUsuario;
  final String correoElectronico;
  final String telefono;
  final String password;
  final bool activo;
  final String fechaDeNacimiento;
  final String? direccion;
  final String rol;

  Donante({
    required this.id,
    required this.nombre,
    required this.nombreUsuario,
    required this.correoElectronico,
    required this.telefono,
    required this.password,
    required this.activo,
    required this.fechaDeNacimiento,
    this.direccion,
    required this.rol,
  });

  factory Donante.fromJson(Map<String, dynamic> json) {
    return Donante(
      id: json['id'],
      nombre: json['nombre'],
      nombreUsuario: json['nombreUsuario'],
      correoElectronico: json['correoElectronico'],
      telefono: json['telefono'],
      password: json['password'],
      activo: json['activo'] == 1,
      fechaDeNacimiento: json['fechaDeNacimiento'],
      direccion: json['direccion'],
      rol: json['rol'],
    );
  }
}