import 'package:flutter/material.dart';

import '../modelos/producto.dart';

class ProductosModel extends ChangeNotifier {
  final FocusNode unfocusNode = FocusNode();

  List<Producto> _productos = [
    Producto(
      nombre: 'Producto 1',
      imagen: 'https://via.placeholder.com/150',
      descripcion: 'Descripción del producto 1',
    ),
    Producto(
      nombre: 'Producto 2',
      imagen: 'https://via.placeholder.com/150',
      descripcion: 'Descripción del producto 2',
    ),
    // Agrega más productos según sea necesario
  ];

  List<Producto> get productos => _productos;

  void agregarProducto(Producto producto) {
    _productos.add(producto);
    notifyListeners();
  }

  void toggleFavorito(int index) {
    _productos[index].favorito = !_productos[index].favorito;
    notifyListeners();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }
}
