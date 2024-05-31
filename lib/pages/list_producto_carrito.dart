import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../api_service.dart';
import '../model/carrito_model.dart';
import '../modelos/producto_carrito.dart';
import 'infromacion_donacion_widget.dart';
import 'package:hive/hive.dart';

class ListaProductosDonacionWidget extends StatefulWidget {
  @override
  _ListaProductosDonacionWidgetState createState() => _ListaProductosDonacionWidgetState();
}

class _ListaProductosDonacionWidgetState extends State<ListaProductosDonacionWidget> {
  late Future<List<ProductoCarrito>> futureProductos;

  @override
  void initState() {
    super.initState();
    final box = Hive.box('myBox');
    final userId = box.get('user_id');
    futureProductos = Provider.of<ApiService>(context, listen: false).verDetallesDonacion(userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos para Donación'),
      ),
      body: FutureBuilder<List<ProductoCarrito>>(
        future: futureProductos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay productos en el carrito'));
          } else {
            final productos = snapshot.data!;
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: productos.length,
                    itemBuilder: (context, index) {
                      final producto = productos[index];
                      return ListTile(
                        title: Text('Producto ID: ${producto.productoId}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cantidad: ${producto.cantidadSeleccionada}'),
                            Text('Fecha de agregado: ${producto.fechaDeAgregado}'),
                            Text('Confirmado: ${producto.confirmado ? "Sí" : "No"}'),
                            Text('Donación ID: ${producto.donacionId}'),
                            Text('Beneficiario ID: ${producto.beneficiarioId}'),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            Provider.of<CarritoModel>(context, listen: false).eliminarProducto(producto.id);
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      final box = Hive.box('myBox');
                      final userId = box.get('user_id');
                      final apiService = Provider.of<ApiService>(context, listen: false);

                      try {
                        // Llamada al API para confirmar la donación
                        final donacion = await apiService.confirmarPedidoDonacion(userId);

                        // Navegar a la pantalla de información de donación con la respuesta del API
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InformacionDonacionWidget(donacion: donacion),
                          ),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error al confirmar la donación: $e')),
                        );
                      }
                    },
                    child: Text('Pedir Donación'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green, // Color del texto
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                      textStyle: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
