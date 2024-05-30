import 'dart:convert';
import 'package:http/http.dart' as http;

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

Future<Categoria> fetchCategoria(int idCategoria) async {
  final response = await http.get(Uri.parse('http://192.168.0.14:9097/categoria/$idCategoria'));

  if (response.statusCode == 200) {
    return Categoria.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load category');
  }
}
