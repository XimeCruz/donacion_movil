class DonacionResponse {
  final Donacion donacion;
  final dynamic voluntarioRecojo;
  final List<ProductoDonacion> productosDonacion;

  DonacionResponse({
    required this.donacion,
    required this.voluntarioRecojo,
    required this.productosDonacion,
  });

  factory DonacionResponse.fromJson(Map<String, dynamic> json) {
    return DonacionResponse(
      donacion: Donacion.fromJson(json['donacion']),
      voluntarioRecojo: json['voluntarioRecojo'],
      productosDonacion: (json['productosDonacion'] as List)
          .map((i) => ProductoDonacion.fromJson(i))
          .toList(),
    );
  }
}


class Donacion {
  final int id;
  final Albergue albergue;
  final Beneficiario beneficiario;
  final dynamic voluntarioRecojo;
  final bool aceptado;
  final bool asignado;
  final bool recojo;
  final bool entregado;
  final bool recibido;

  Donacion({
    required this.id,
    required this.albergue,
    required this.beneficiario,
    required this.voluntarioRecojo,
    required this.aceptado,
    required this.asignado,
    required this.recojo,
    required this.entregado,
    required this.recibido,
  });

  factory Donacion.fromJson(Map<String, dynamic> json) {
    return Donacion(
      id: json['id'],
      albergue: Albergue.fromJson(json['albergue']),
      beneficiario: Beneficiario.fromJson(json['beneficiario']),
      voluntarioRecojo: json['voluntarioRecojo'],
      aceptado: json['aceptado'],
      asignado: json['asignado'],
      recojo: json['recojo'],
      entregado: json['entregado'],
      recibido: json['recibido'],
    );
  }
}

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
      latitud: json['latitud'].toDouble(),
      longitud: json['longitud'].toDouble(),
      capacidad: json['capacidad'],
      descripcion: json['descripcion'],
    );
  }
}


class Beneficiario {
  final int id;
  final String nombre;
  final String nombreUsuario;
  final String correoElectronico;
  final String telefono;
  final String password;
  final dynamic passwordValid;
  final int activo;
  final String fechaDeNacimiento;
  final dynamic direccion;
  final String rol;

  Beneficiario({
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

  factory Beneficiario.fromJson(Map<String, dynamic> json) {
    return Beneficiario(
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


class ProductoDonacion {
  final int id;
  final int cantidadSeleccionada;
  final String fechaDeAgregado;
  final int productoId;
  final bool confirmado;
  final int donacionId;
  final int beneficiarioId;

  ProductoDonacion({
    required this.id,
    required this.cantidadSeleccionada,
    required this.fechaDeAgregado,
    required this.productoId,
    required this.confirmado,
    required this.donacionId,
    required this.beneficiarioId,
  });

  factory ProductoDonacion.fromJson(Map<String, dynamic> json) {
    return ProductoDonacion(
      id: json['id'],
      cantidadSeleccionada: json['cantidadSeleccionada'],
      fechaDeAgregado: json['fechaDeAgregado'],
      productoId: json['productoId'],
      confirmado: json['confirmado'],
      donacionId: json['donacionId'],
      beneficiarioId: json['beneficiarioId'],
    );
  }
}
