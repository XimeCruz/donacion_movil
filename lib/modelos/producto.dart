class Producto {
  final String nombre;
  final String imagen;
  final String descripcion;
  late final bool favorito;

  Producto({
    required this.nombre,
    required this.imagen,
    required this.descripcion,
    this.favorito = false,
  });
}
