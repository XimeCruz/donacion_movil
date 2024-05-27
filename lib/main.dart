import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Importa tus páginas y modelos
import 'package:donacion/pages/crear_cuenta_widget.dart';
import 'package:donacion/pages/diapositivas_widget.dart';
import 'package:donacion/pages/inicio_sesion_widget.dart';
import 'package:donacion/pages/productos_widget.dart';
import 'package:donacion/pages/splash_widget.dart';
import 'package:donacion/model/productos_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductosModel()),
        // Agrega más proveedores aquí si es necesario
      ],
      child: MaterialApp(
        title: 'Donacion Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashWidget(),
          '/diapositivas': (context) => DiapositivasWidget(),
          '/crear-cuenta': (context) => CrearCuentaWidget(),
          '/inicio-sesion' : (context) => InicioSesionWidget(),
          '/ver-productos' : (context) => ProductosWidget(),
        },
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Consumo de API'),
//         ),
//         body: DataPage(),
//       ),
//     );
//   }
// }

// class DataPage extends StatefulWidget {
//   @override
//   _DataPageState createState() => _DataPageState();
// }

// class _DataPageState extends State<DataPage> {
//   List<dynamic> _data = [];
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     final url = Uri.parse('http://192.168.0.14:9097/actividad');
//     try {
//       final response = await http.get(url);
//       print(response);

//       if (response.statusCode == 200) {
//         setState(() {
//           _data = json.decode(response.body);
//           _isLoading = false;
//         });
//       } else {
//         print('Failed to load data. Status code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Failed to load data. Error: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return Center(child: CircularProgressIndicator());
//     }
//     return ListView.builder(
//       itemCount: _data.length,
//       itemBuilder: (context, index) {
//         final item = _data[index];
//         final key1 = item['key1'] ?? 'No data'; // Manejar null
//         final key2 = item['key2'] ?? 'No data'; // Manejar null
//         return ListTile(
//           title: Text(key1),
//           subtitle: Text(key2),
//         );
//       },
//     );
//   }
//}
