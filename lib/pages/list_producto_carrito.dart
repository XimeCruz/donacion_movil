import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/carrito_model.dart';
import '../modelos/albergue.dart';
import '../modelos/beneficiario.dart';
import '../modelos/donacion.dart';
import 'infromacion_donacion_widget.dart';

class ListaProductosDonacionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<CarritoModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos para Donación'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Simulamos una respuesta de donación
                final donacion = Donacion(
                  id: 5,
                  albergue: Albergue(
                    id: 1,
                    nombre: "Albergue esperanza",
                    direccion: "Av. Peru",
                    beneficiarioId: 9,
                    telefono: "2458963",
                    email: "albergueesperanza@gmail.com",
                    imagen: "/images/a2.jpeg",
                    latitud: -16.4920308,
                    longitud: -68.1446255,
                    capacidad: 500,
                    descripcion: "Ubicado en el corazón de la ciudad, el Albergue Refugio Urbano ofrece un oasis de tranquilidad y comodidad en medio del bullicio urbano. Este albergue es el lugar perfecto para viajeros de todas las edades que buscan un alojamiento asequible y céntrico sin comprometer la calidad y la seguridad.",
                  ),
                  beneficiario: Beneficiario(
                    id: 9,
                    nombre: "Admin",
                    nombreUsuario: "Admin",
                    correoElectronico: "Admin@gmail.com",
                    telefono: "3148918702",
                    password: "\$2a\$10\$zfHAlRP5PqQLFewPFxDyNO1bTGgOE98OAIPEkoLK4/6HJgDytRRl6",
                    passwordValid: null,
                    activo: 1,
                    fechaDeNacimiento: "2004-03-04",
                    direccion: null,
                    rol: 2,
                  ),
                  aceptado: false,
                  asignado: false,
                  recojo: false,
                  entregado: null,
                  recibido: null,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InformacionDonacionWidget(donacion: donacion),
                  ),
                );
              },
              child: Text('Pedir Donación'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green, // Color del texto
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                textStyle: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
