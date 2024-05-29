import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../modelos/producto.dart';

class ProductosModel extends ChangeNotifier {
  final FocusNode unfocusNode = FocusNode();
  List<Producto> _productos = [];

  List<Producto> get productos => _productos;

  Future<void> fetchProductos() async {
    final response = await http.get(Uri.parse('http://192.168.0.14:9097/productos'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      _productos = data.map((item) => Producto.fromJson(item)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load products');
    }
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }
}
