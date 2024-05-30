import 'package:donacion/flutter_flow/flutter_flow_theme.dart';
import 'package:donacion/model/carrito_model.dart';
import 'package:donacion/modelos/producto_carrito.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              foregroundColor:
                  FlutterFlowTheme().primary
              ),
        ),
        ElevatedButton(
          onPressed: () {
            final nuevoProductoCarrito = ProductoCarrito(
              id: DateTime.now().millisecondsSinceEpoch,
              cantidadSeleccionada: cantidad,
              fechaDeAgregado: DateTime.now(),
              productoId: widget.producto.id,
              confirmado: false,
              donacionId: 1,
              beneficiarioId: 1,
            );
            Provider.of<CarritoModel>(context, listen: false)
                .agregarProducto(nuevoProductoCarrito);
            Navigator.pop(context);
            Navigator.pushNamed(context, '/carrito');
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
