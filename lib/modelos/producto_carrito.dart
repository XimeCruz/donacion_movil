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
