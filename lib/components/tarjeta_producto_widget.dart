import 'package:donacion/components/agregar_donacion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../modelos/producto.dart';
import '../pages/informacion_producto.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/services.dart';

class TarjetaProductoWidget extends StatefulWidget {
  const TarjetaProductoWidget({
    super.key,
    required this.producto,
  });

  final Producto producto;

  @override
  State<TarjetaProductoWidget> createState() => _TarjetaProductoWidgetState();
}

class _TarjetaProductoWidgetState extends State<TarjetaProductoWidget>
    with TickerProviderStateMixin {
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        HapticFeedback.lightImpact();
        Navigator.pushNamed(
          context,
          'InformacionP',
          arguments: {'producto': widget.producto},
        );
      },
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: const Color.fromARGB(0, 209, 108, 108),
            width: 1.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets${widget.producto.imagen}'),
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InformacionPWidget(
                            producto: widget.producto,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 32.0,
                      height: 32.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: Icon(
                              Icons.info_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
              child: Text(
                widget.producto.nombre,
                maxLines: 2,
                style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 12.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AgregarDonacionPopup(producto: widget.producto),
                  );
                },
                child: Text(
                  'Agregar a donación',
                  style: TextStyle(
                    color: Colors.white, // Cambiar color de texto a blanco
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: FlutterFlowTheme.of(context)
                      .primary,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 3.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
