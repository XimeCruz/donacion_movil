import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import '../api_service.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/producto.dart';

class AgregarDonacionPopup extends StatefulWidget {
  final Producto producto;
  const AgregarDonacionPopup({Key? key, required this.producto})
      : super(key: key);

  @override
  _AgregarDonacionPopupState createState() => _AgregarDonacionPopupState();
}

class _AgregarDonacionPopupState extends State<AgregarDonacionPopup> {
  int cantidad = 1;

  @override
  Widget build(BuildContext context) {
    final apiService = Provider.of<ApiService>(context);
    final box = Hive.box('myBox');
    final userId = box.get('user_id');

    return AlertDialog(
      title: Text('Agregar a Donación'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets${widget.producto.imagen}', height: 100.0),
          SizedBox(height: 10),
          Text(widget.producto.nombre,
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cantidad:'),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if (cantidad > 1) {
                        setState(() {
                          cantidad--;
                        });
                      }
                    },
                  ),
                  Text('$cantidad'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        cantidad++;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancelar'),
          style: TextButton.styleFrom(
            foregroundColor: FlutterFlowTheme().primary,
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final data = {
              "idProducto": widget.producto.id,
              "cantidad": cantidad,
              "idUsuario": userId,
            };

            try {
              final nuevoProductoCarrito =
                  await apiService.anadirProducto(data);
              print(nuevoProductoCarrito);
              // Provider.of<CarritoModel>(context, listen: false)
              //     .agregarProducto(nuevoProductoCarrito as ProductoCarrito);
              // final producto = await apiService.anadirProducto(data);
              // Provider.of<CarritoModel>(context, listen: false)
              //     .agregarProducto(producto);

              Navigator.pop(context);
              Navigator.pushNamed(context, '/carrito');
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error al agregar producto: $e')),
              );
            }
          },
          child: Text('Agregar'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
