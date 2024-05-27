// import '/flutter_flow/flutter_flow_theme.dart';
// import 'package:flutter/material.dart';

// import 'carga_prod_model.dart';


// class CargaProductoWidget extends StatefulWidget {
//   const CargaProductoWidget({super.key});

//   @override
//   State<CargaProductoWidget> createState() => _CargaProductoWidgetState();
// }

// class _CargaProductoWidgetState extends State<CargaProductoWidget> {
//   late CargaProductoModel _model;

//   @override
//   void setState(VoidCallback callback) {
//     super.setState(callback);
//     _model.onUpdate();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _model = CargaProductoModel();

//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }

//   @override
//   void dispose() {
//     _model.maybeDispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: MediaQuery.sizeOf(context).width * 0.48,
//           height: 150.0,
//           decoration: BoxDecoration(
//             color: FlutterFlowTheme.of(context).secondaryBackground,
//             borderRadius: BorderRadius.circular(24.0),
//             border: Border.all(
//               color: FlutterFlowTheme.of(context).alternate,
//               width: 1.0,
//             ),
//           ),
//           child: Align(
//             alignment: AlignmentDirectional(1.0, -1.0),
//             child: Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
//               child: Container(
//                 width: 32.0,
//                 height: 32.0,
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: AlignmentDirectional(1.0, -1.0),
//                       child: Icon(
//                         Icons.info_rounded,
//                         color: FlutterFlowTheme.of(context).secondaryText,
//                         size: 32.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
//           child: Container(
//             width: 140.0,
//             height: 21.0,
//             decoration: BoxDecoration(
//               color: FlutterFlowTheme.of(context).secondaryBackground,
//               borderRadius: BorderRadius.circular(24.0),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
//           child: Container(
//             width: 60.0,
//             height: 18.0,
//             decoration: BoxDecoration(
//               color: FlutterFlowTheme.of(context).secondaryBackground,
//               borderRadius: BorderRadius.circular(24.0),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
