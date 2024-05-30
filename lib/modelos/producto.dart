import 'donante.dart';

class Producto {
  final int id;
  final String nombre;
  final String descripcion;
  final int idCategoria;
  final int unidadesDisponibles;
  final String fechaDePublicacion;
  final String? fechaDeVencimiento;
  final String imagen;
  final Donante donante;
  final bool confirmado;
  bool favorito; // Añadido

  Producto({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.idCategoria,
    required this.unidadesDisponibles,
    required this.fechaDePublicacion,
    this.fechaDeVencimiento,
    required this.imagen,
    required this.donante,
    required this.confirmado,
    this.favorito = false, // Añadido
  });

  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      idCategoria: json['idCategoria'],
      unidadesDisponibles: json['unidadesDisponibles'],
      fechaDePublicacion: json['fechaDePublicacion'],
      fechaDeVencimiento: json['fechaDeVencimiento'],
      imagen: json['imagen'],
      donante: Donante.fromJson(json['donante']),
      confirmado: json['verificado'],
      favorito: json['favorito'] ?? false, // Añadido para manejo de JSON
    );
  }
}
