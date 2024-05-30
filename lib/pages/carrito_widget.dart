import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/carrito_model.dart';

class CarritoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<CarritoModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Donaciones'),
      ),
      body: ListView.builder(
        itemCount: carrito.productosEnCarrito.length,
        itemBuilder: (context, index) {
          final producto = carrito.productosEnCarrito[index];
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
                carrito.eliminarProducto(producto.id);
              },
            ),
          );
        },
      ),
    );
  }
}
