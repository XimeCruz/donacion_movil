import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hive/hive.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modelos/albergue.dart';
import '../globals.dart' as globals;

class InformacionAlbergueWidget extends StatefulWidget {
  final userId = Hive.box('myBox').get('user_id');

  InformacionAlbergueWidget({Key? key}) : super(key: key);

  @override
  _InformacionAlbergueWidgetState createState() =>
      _InformacionAlbergueWidgetState();
}

class _InformacionAlbergueWidgetState extends State<InformacionAlbergueWidget> {
  Albergue? albergue;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchAlbergue();
  }

  Future<void> fetchAlbergue() async {
    final response = await http.get(
        Uri.parse('${globals.globalUrl}/albergues/find-user/${widget.userId}'));

    if (response.statusCode == 200) {
      setState(() {
        albergue = Albergue.fromJson(jsonDecode(response.body));
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load albergue');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets${albergue!.imagen}',
              height: 300.0,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40.0,
            left: 10.0,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        albergue!.nombre,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Dirección: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: albergue!.direccion),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Teléfono: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: albergue!.telefono),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Email: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: albergue!.email),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Capacidad: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: '${albergue!.capacidad}'),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Descripción: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: albergue!.descripcion),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Ubicación: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        height:
                            200.0, // Ajusta la altura del mapa según sea necesario
                        child: FlutterMap(
                          options: MapOptions(
                            center:
                                LatLng(albergue!.latitud, albergue!.longitud),
                            zoom: 15.0,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                              userAgentPackageName: 'com.example.app',
                            ),
                            MarkerLayer(
                              markers: [
                                Marker(
                                  width: 80.0,
                                  height: 80.0,
                                  point: LatLng(
                                      albergue!.latitud, albergue!.longitud),
                                  builder: (ctx) => Container(
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                      size: 40.0,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
