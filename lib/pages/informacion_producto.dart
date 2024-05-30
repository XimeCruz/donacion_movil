import '../components/flecha2_atras_widget.dart';
import '../model/informacion_producto_model.dart';
import '../modelos/categoria.dart';
import '../modelos/producto.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class InformacionPWidget extends StatefulWidget {
  const InformacionPWidget({
    Key? key,
    required this.producto,
  }) : super(key: key);

  final Producto producto;

  @override
  State<InformacionPWidget> createState() => _InformacionPWidgetState();
}

class _InformacionPWidgetState extends State<InformacionPWidget> with TickerProviderStateMixin {
  late Future<Categoria> futureCategoria;
  late InformacionPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = Provider.of<InformacionPModel>(context, listen: false);
    _model.initState(context);

    futureCategoria = fetchCategoria(widget.producto.idCategoria);

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    if (_model.unfocusNode.hasFocus) {
      _model.unfocusNode.unfocus();
    }
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<InformacionPModel>(context);
    final theme = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () {
        if (mounted && model.unfocusNode.canRequestFocus) {
          FocusScope.of(context).requestFocus(model.unfocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: double.infinity,
                      height: 800.0,
                      decoration: BoxDecoration(
                        color: theme.secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets${widget.producto.imagen}'),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 54.0, 24.0, 0.0),
                          child: Flecha2AtrasWidget(
                            backButton: true,
                            actionButton: false,
                            optionsButton: false,
                            actionButtonAction: () async {
                              Navigator.pushNamed(context, '/ver-productos');
                            },
                            optionsButtonAction: () async {},
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: theme.primaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(24.0),
                            topRight: Radius.circular(24.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0), // Ajusta el padding aquí
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      widget.producto.nombre,
                                      style: theme.headline5,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          18.0, 2.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            widget.producto.favorito =
                                                !widget.producto.favorito;
                                          });
                                        },
                                        child: Icon(
                                          widget.producto.favorito
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: theme.secondaryText,
                                          size: 32.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FutureBuilder<Categoria>(
                                future: futureCategoria,
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState == ConnectionState.waiting) {
                                    return CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else if (snapshot.hasData) {
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 6.0, 0.0, 0.0),
                                      child: Text(
                                        'Categoría: ${snapshot.data!.nombre}',
                                        style: theme.subtitle1,
                                      ),
                                    );
                                  } else {
                                    return Text('Categoría no disponible');
                                  }
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0.0,
                                    16.0, 0.0, 0.0), // Ajusta el padding aquí
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Unidades disponibles: ${widget.producto.unidadesDisponibles}',
                                      style: theme.bodyText1,
                                    ),
                                    SizedBox(
                                        height:
                                            8.0), // Espacio entre las líneas
                                    Text(
                                      'Detalles:',
                                      style: theme.bodyText1.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            4.0), // Espacio entre las líneas
                                    Text(
                                      widget.producto.descripcion,
                                      style: theme.bodyText2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
