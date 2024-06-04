import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../components/donacion_item.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../modelos/donacionResponse.dart';
import '../globals.dart' as globals;

class DonacionesWidget extends StatefulWidget {

  final userId = Hive.box('myBox').get('user_id');

  DonacionesWidget({Key? key}) : super(key: key);

  @override
  _DonacionesWidgetState createState() => _DonacionesWidgetState();
}

class _DonacionesWidgetState extends State<DonacionesWidget> {
  List<DonacionResponse> donaciones = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchDonaciones();
  }

  Future<void> fetchDonaciones() async {
    try {
      final response = await http.get(Uri.parse('${globals.globalUrl}/solicitud/lista-donacion-pedida/${widget.userId}'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        setState(() {
          donaciones = jsonData.map((json) => DonacionResponse.fromJson(json)).toList();
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load donaciones');
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
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
      key: GlobalKey<ScaffoldState>(),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Donaciones',
                    style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Text(
                      'Lista de donaciones pedidas',
                      style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: donaciones.length,
                itemBuilder: (context, index) {
                  return DonacionItemWidget(
                    donacionResponse: donaciones[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
