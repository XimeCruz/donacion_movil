import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<dynamic> iniciarSesion(String email, String contrasenia) async {
    final url = Uri.parse('$baseUrl/prueba/usuario');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': email, 'contrasenia': contrasenia});

    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al iniciar sesión: ${response.body}');
    }
  }

  Future<dynamic> getRequest(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl$endpoint'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al realizar la petición GET');
    }
  }

  Future<dynamic> postRequest(String endpoint, [Map<String, dynamic>? data]) async {
    final response = await http.post(
      Uri.parse('$baseUrl$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: data != null ? jsonEncode(data) : null,
    );
    if (response.statusCode == 201 || response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al realizar la petición POST');
    }
  }

  Future<Categoria> getCategoria(int idCategoria) async {
    final response = await getRequest('/categoria/$idCategoria');
    return Categoria.fromJson(response);
  }

  Future<Usuario> crearCuenta(Map<String, dynamic> data) async {
    final response = await postRequest('/prueba/crear-cuenta', data);
    return Usuario.fromJson(response);
  }

  Future<ProductoCarrito> anadirProducto(Map<String, dynamic> data) async {
    final response = await postRequest('/solicitud/anadir-producto', data);
    return ProductoCarrito.fromJson(response);
  }

  Future<List<ProductoCarrito>> verDetallesDonacion(int idUsuario) async {
    final response = await getRequest('/solicitud/carrito-donacion/$idUsuario');
    return (response as List).map((e) => ProductoCarrito.fromJson(e)).toList();
  }

  Future<Donacion> confirmarPedidoDonacion(int idUsuario) async {
    final response = await postRequest('/solicitud/carrito-confirmar/$idUsuario');
    return Donacion.fromJson(response);
  }

  Future<List<ProductoCarrito>> verProductosPedidos(int idUsuario) async {
    final response = await getRequest('/solicitud/lista-donacion/$idUsuario');
    return (response as List).map((e) => ProductoCarrito.fromJson(e)).toList();
  }

  Future<List<Donacion>> verListaDonacionesPedidas() async {
    final response = await getRequest('/solicitud/lista-donacion-pedida');
    return (response as List).map((e) => Donacion.fromJson(e)).toList();
  }

  Future<DonacionInfo> verInformacionDonacion(int idDonacion) async {
    final response = await getRequest('/solicitud/lista-info-donacion/$idDonacion');
    return DonacionInfo.fromJson(response);
  }

  Future<List<Notificacion>> verNotificaciones() async {
    final response = await getRequest('/solicitud/ver-notificaciones');
    return (response as List).map((e) => Notificacion.fromJson(e)).toList();
  }

  Future<NotificacionInfo> verInformacionNotificacion(int idNotificacion) async {
    final response = await getRequest('/solicitud/ver-info-noti-donacion/$idNotificacion');
    return NotificacionInfo.fromJson(response);
  }

  Future<Notificacion> aceptarRecojo(int idNotificacion, int idUsuario) async {
    final response = await postRequest('/solicitud/aceptar-recojo/$idNotificacion/$idUsuario');
    return Notificacion.fromJson(response);
  }

  Future<Donacion> notificarEntrega(int idNotificacion, int idUsuario) async {
    final response = await postRequest('/solicitud/actualizar-entrega/$idNotificacion/$idUsuario');
    return Donacion.fromJson(response);
  }

  Future<Donacion> aceptarRecibido(int idNotificacion, int idUsuario) async {
    final response = await postRequest('/solicitud/actualizar-recibido/$idNotificacion/$idUsuario');
    return Donacion.fromJson(response);
  }
}

// Modelos
class Categoria {
  final int id;
  final String nombre;
  final String descripcion;

  Categoria({
    required this.id,
    required this.nombre,
    required this.descripcion,
  });

  factory Categoria.fromJson(Map<String, dynamic> json) {
    return Categoria(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
    );
  }
}

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

class ProductoCarrito {
  final int id;
  final int cantidadSeleccionada;
  final String fechaDeAgregado;
  final int productoId;
  final bool confirmado;
  final int? donacionId;
  final int beneficiarioId;

  ProductoCarrito({
    required this.id,
    required this.cantidadSeleccionada,
    required this.fechaDeAgregado,
    required this.productoId,
    required this.confirmado,
    this.donacionId,
    required this.beneficiarioId,
  });

  factory ProductoCarrito.fromJson(Map<String, dynamic> json) {
    return ProductoCarrito(
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

class Donacion {
  final int id;
  final Albergue? albergue;
  final Beneficiario? beneficiario;
  final dynamic voluntarioRecojo;
  final bool? aceptado;
  final bool? asignado;
  final bool? recojo;
  final bool? entregado;
  final bool? recibido;

  Donacion({
    required this.id,
    this.albergue,
    this.beneficiario,
    this.voluntarioRecojo,
    this.aceptado,
    this.asignado,
    this.recojo,
    this.entregado,
    this.recibido,
  });

  factory Donacion.fromJson(Map<String, dynamic> json) {
    return Donacion(
      id: json['id'],
      albergue: json['albergue'] != null ? Albergue.fromJson(json['albergue']) : null,
      beneficiario: json['beneficiario'] != null ? Beneficiario.fromJson(json['beneficiario']) : null,
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
      latitud: json['latitud'],
      longitud: json['longitud'],
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
  final String? direccion;
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

class DonacionInfo {
  final Albergue albergue;
  final Beneficiario beneficiario;
  final dynamic voluntarioRecojo;
  final List<ProductoCarrito> productosDonacion;

  DonacionInfo({
    required this.albergue,
    required this.beneficiario,
    this.voluntarioRecojo,
    required this.productosDonacion,
  });

  factory DonacionInfo.fromJson(Map<String, dynamic> json) {
    return DonacionInfo(
      albergue: Albergue.fromJson(json['albergue']),
      beneficiario: Beneficiario.fromJson(json['beneficiario']),
      voluntarioRecojo: json['voluntarioRecojo'],
      productosDonacion: (json['productosDonacion'] as List).map((e) => ProductoCarrito.fromJson(e)).toList(),
    );
  }
}

class Notificacion {
  final int id;
  final String mensaje;
  final int? idDonacion;
  final int? idProducto;
  final bool visto;

  Notificacion({
    required this.id,
    required this.mensaje,
    this.idDonacion,
    this.idProducto,
    required this.visto,
  });

  factory Notificacion.fromJson(Map<String, dynamic> json) {
    return Notificacion(
      id: json['id'],
      mensaje: json['mensaje'],
      idDonacion: json['idDonacion'],
      idProducto: json['idProducto'],
      visto: json['visto'],
    );
  }
}

class NotificacionInfo {
  final String mensaje;
  final Donacion donacion;
  final dynamic producto;
  final bool visto;

  NotificacionInfo({
    required this.mensaje,
    required this.donacion,
    this.producto,
    required this.visto,
  });

  factory NotificacionInfo.fromJson(Map<String, dynamic> json) {
    return NotificacionInfo(
      mensaje: json['mensaje'],
      donacion: Donacion.fromJson(json['donacion']),
      producto: json['producto'],
      visto: json['visto'],
    );
  }
}
