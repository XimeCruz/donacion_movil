import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../modelos/albergue.dart';
import '../pages/informacion_albergue.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/services.dart';

class TarjetaAlbergueWidget extends StatefulWidget {
  const TarjetaAlbergueWidget({
    super.key,
    required this.albergue,
  });

  final Albergue albergue;

  @override
  State<TarjetaAlbergueWidget> createState() => _TarjetaAlbergueWidgetState();
}

class _TarjetaAlbergueWidgetState extends State<TarjetaAlbergueWidget>
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
          'InformacionA',
          arguments: {'albergue': widget.albergue},
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
                  image: AssetImage('assets${widget.albergue.imagen}'),
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
                          builder: (context) => InformacionAWidget(
                            albergue: widget.albergue,
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
                widget.albergue.nombre,
                maxLines: 2,
                style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
