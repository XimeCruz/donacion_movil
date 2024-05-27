// import '/components/flecha_atras_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'lista_notificaciones_model.dart';
// export 'lista_notificaciones_model.dart';
//
// class ListaNotificacionesWidget extends StatefulWidget {
//   const ListaNotificacionesWidget({super.key});
//
//   @override
//   State<ListaNotificacionesWidget> createState() =>
//       _ListaNotificacionesWidgetState();
// }
//
// class _ListaNotificacionesWidgetState extends State<ListaNotificacionesWidget> {
//   late ListaNotificacionesModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => ListaNotificacionesModel());
//
//     logFirebaseEvent('screen_view',
//         parameters: {'screen_name': 'listaNotificaciones'});
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         body: SafeArea(
//           top: true,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(
//                             10.0, 60.0, 0.0, 0.0),
//                         child: wrapWithModel(
//                           model: _model.flechaAtrasModel,
//                           updateCallback: () => setState(() {}),
//                           child: FlechaAtrasWidget(
//                             backButton: false,
//                             actionButton: false,
//                             optionsButton: false,
//                             actionButtonAction: () async {},
//                             optionsButtonAction: () async {},
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding:
//                   EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
//                   child: Text(
//                     'Notificaciones',
//                     style: FlutterFlowTheme.of(context).headlineMedium.override(
//                       fontFamily: 'Inter',
//                       color: FlutterFlowTheme.of(context).primaryText,
//                       letterSpacing: 0.0,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
//                         child: Container(
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context)
//                                 .secondaryBackground,
//                             borderRadius: BorderRadius.circular(12.0),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(
//                                 16.0, 16.0, 16.0, 16.0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       'Notification Title',
//                                       style: FlutterFlowTheme.of(context)
//                                           .bodyMedium
//                                           .override(
//                                         fontFamily: 'Inter',
//                                         letterSpacing: 0.0,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Notification Date',
//                                       style: FlutterFlowTheme.of(context)
//                                           .bodySmall
//                                           .override(
//                                         fontFamily: 'Inter',
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryText,
//                                         letterSpacing: 0.0,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0.0, 16.0, 0.0, 0.0),
//                                   child: FFButtonWidget(
//                                     onPressed: () {
//                                       print('Button pressed ...');
//                                     },
//                                     text: 'Ver detalles',
//                                     options: FFButtonOptions(
//                                       width: MediaQuery.sizeOf(context).width *
//                                           1.0,
//                                       height: 44.0,
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0.0, 0.0, 0.0, 0.0),
//                                       iconPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           0.0, 0.0, 0.0, 0.0),
//                                       color:
//                                       FlutterFlowTheme.of(context).primary,
//                                       textStyle: FlutterFlowTheme.of(context)
//                                           .titleSmall
//                                           .override(
//                                         fontFamily: 'Inter',
//                                         color: Colors.white,
//                                         letterSpacing: 0.0,
//                                       ),
//                                       elevation: 0.0,
//                                       borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Divider(
//                         height: 1.0,
//                         thickness: 1.0,
//                         color: FlutterFlowTheme.of(context).alternate,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
