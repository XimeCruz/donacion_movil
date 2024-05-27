import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../modelos/producto.dart';
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

class _TarjetaProductoWidgetState extends State<TarjetaProductoWidget> with TickerProviderStateMixin {
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        InkWell(
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: InkWell(
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
                  onDoubleTap: () async {
                    HapticFeedback.lightImpact();
                    setState(() {
                      widget.producto.favorito = !widget.producto.favorito;
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.755,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.producto.imagen),
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
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
                            setState(() {
                              widget.producto.favorito = !widget.producto.favorito;
                            });
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
                                    color: FlutterFlowTheme.of(context).secondaryText,
                                    size: 32.0,
                                  ),
                                ),
                                if (widget.producto.favorito)
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Icon(
                                      Icons.favorite_rounded,
                                      color: Color(0xFFFF4E59),
                                      size: 32.0,
                                    ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  widget.producto.nombre,
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Agregar a donación',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
