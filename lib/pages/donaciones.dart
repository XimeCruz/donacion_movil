// import '../model/donaciones_model.dart';
// import '/components/flecha_atras_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';


// class DonacionesWidget extends StatefulWidget {
//   const DonacionesWidget({super.key});

//   @override
//   State<DonacionesWidget> createState() => _DonacionesWidgetState();
// }

// class _DonacionesWidgetState extends State<DonacionesWidget> {
//   late DonacionesModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = DonacionesModel();

//     // logFirebaseEvent('screen_view', parameters: {'screen_name': 'Donaciones'});
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

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
//           child: Align(
//             alignment: AlignmentDirectional(0.0, 0.0),
//             child: Padding(
//               padding: EdgeInsets.all(24.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   FlechaAtrasWidget(
//                     backButton: true,
//                     actionButton: false,
//                     optionsButtonAction: () async {},
//                   ),
//                   Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
//                     child: Text(
//                       'Donaciones',
//                       style: FlutterFlowTheme.of(context).displaySmall.copyWith(
//                         fontFamily: 'Inter',
//                         letterSpacing: 0.0,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding:
//                       EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
//                       child: wrapWithModel(
//                         model: _model.listaDonacionesModel,
//                         updateCallback: () => setState(() {}),
//                         child: DonacionesWidget(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

