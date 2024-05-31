import 'package:donacion/model/albergues_model.dart';
import 'package:donacion/pages/list_producto_carrito.dart';
import 'package:donacion/pages/main_voluntario_widget.dart';
import 'package:donacion/pages/olvide_contrasenia_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:donacion/pages/crear_cuenta_widget.dart';
import 'package:donacion/pages/diapositivas_widget.dart';
import 'package:donacion/pages/inicio_sesion_widget.dart';
import 'package:donacion/pages/productos_widget.dart';
import 'package:donacion/pages/splash_widget.dart';
import 'package:donacion/model/productos_model.dart';

import 'model/carrito_model.dart';
import 'model/informacion_producto_model.dart';
import 'globals.dart' as globals;
import 'pages/main_widget.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  globals.globalUrl = "http://192.168.0.14:9097";
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductosModel()),
        ChangeNotifierProvider(create: (_) => InformacionPModel()),
        ChangeNotifierProvider(create: (_) => CarritoModel()),
        ChangeNotifierProvider(create: (_) => AlberguesModel()),
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
          '/inicio-sesion': (context) => InicioSesionWidget(),
          '/ver-productos': (context) => ProductosWidget(),
          '/carrito': (context) => ListaProductosDonacionWidget(),
          '/main-beneficiario': (context) => MainScreen(),
          '/main-volun': (context) => MainVolunScreen(),
          '/olvido-contrasenia': (context) => OlvidoContraseniaWidget(),
        },
      ),
    );
  }
}
