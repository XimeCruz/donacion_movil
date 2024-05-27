import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/tarjeta_producto_widget.dart';
import '../model/productos_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class ProductosWidget extends StatefulWidget {
  const ProductosWidget({super.key});

  @override
  State<ProductosWidget> createState() => _ProductosWidgetState();
}

class _ProductosWidgetState extends State<ProductosWidget> {
  @override
  Widget build(BuildContext context) {
    var productosModel = Provider.of<ProductosModel>(context);

    return GestureDetector(
      onTap: () => productosModel.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(productosModel.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                      'Productos disponibles',
                      style: FlutterFlowTheme.of(context).displaySmall.copyWith(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Text(
                        'Elige los productos que desees',
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
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 0.78,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: productosModel.productos.length,
                    itemBuilder: (context, index) {
                      final producto = productosModel.productos[index];
                      return TarjetaProductoWidget(
                        key: Key('Key_$index'),
                        producto: producto,
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
