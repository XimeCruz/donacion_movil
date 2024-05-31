import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/tarjeta_albergue_widget.dart';
import '../model/albergues_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class AlberguesWidget extends StatefulWidget {
  const AlberguesWidget({super.key});

  @override
  State<AlberguesWidget> createState() => _AlberguesWidgetState();
}

class _AlberguesWidgetState extends State<AlberguesWidget> {
  @override
  void initState() {
    super.initState();
    final alberguesModel = Provider.of<AlberguesModel>(context, listen: false);
    alberguesModel.fetchAlbergues();
  }

  @override
  Widget build(BuildContext context) {
    var alberguesModel = Provider.of<AlberguesModel>(context);

    return GestureDetector(
      onTap: () => alberguesModel.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(alberguesModel.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                      'Albergues registrados',
                      style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Text(
                        'Eneterate de los albergues afiliados',
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
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: alberguesModel.albergues.isEmpty
                      ? Center(child: CircularProgressIndicator())
                      : GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 0.78,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: alberguesModel.albergues.length,
                          itemBuilder: (context, index) {
                            final albergue = alberguesModel.albergues[index];
                            return TarjetaAlbergueWidget(
                              key: Key('Key_$index'),
                              albergue: albergue,
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
