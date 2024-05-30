class ProductoCarrito {
  final int id;
  final int cantidadSeleccionada;
  final DateTime fechaDeAgregado;
  final int productoId;
  final bool confirmado;
  final int donacionId;
  final int beneficiarioId;

  ProductoCarrito({
    required this.id,
    required this.cantidadSeleccionada,
    required this.fechaDeAgregado,
    required this.productoId,
    required this.confirmado,
    required this.donacionId,
    required this.beneficiarioId,
  });
}
