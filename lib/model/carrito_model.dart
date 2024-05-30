import 'package:flutter/material.dart';

import '../modelos/producto_carrito.dart';

class CarritoModel extends ChangeNotifier {
  List<ProductoCarrito> _productosEnCarrito = [];

  List<ProductoCarrito> get productosEnCarrito => _productosEnCarrito;

  void agregarProducto(ProductoCarrito producto) {
    _productosEnCarrito.add(producto);
    notifyListeners();
  }

  void eliminarProducto(int id) {
    _productosEnCarrito.removeWhere((producto) => producto.id == id);
    notifyListeners();
  }
}
