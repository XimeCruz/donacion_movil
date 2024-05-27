// import '/components/flecha_atras_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'recojo_detall_model.dart';
// export 'recojo_detall_model.dart';
//
// class RecojoDetallWidget extends StatefulWidget {
//   const RecojoDetallWidget({super.key});
//
//   @override
//   State<RecojoDetallWidget> createState() => _RecojoDetallWidgetState();
// }
//
// class _RecojoDetallWidgetState extends State<RecojoDetallWidget> {
//   late RecojoDetallModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => RecojoDetallModel());
//
//     logFirebaseEvent('screen_view',
//         parameters: {'screen_name': 'recojoDetall'});
//     _model.fullNameTextController ??= TextEditingController();
//     _model.fullNameFocusNode ??= FocusNode();
//
//     _model.emailAddressTextController ??= TextEditingController();
//     _model.emailAddressFocusNode ??= FocusNode();
//
//     _model.passwordTextController ??= TextEditingController();
//     _model.passwordFocusNode ??= FocusNode();
//
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
//           child: Align(
//             alignment: AlignmentDirectional(0.0, 0.0),
//             child: Padding(
//               padding: EdgeInsets.all(24.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   wrapWithModel(
//                     model: _model.flechaAtrasModel,
//                     updateCallback: () => setState(() {}),
//                     child: FlechaAtrasWidget(
//                       backButton: true,
//                       actionButton: false,
//                       actionButtonAction: () async {},
//                       optionsButtonAction: () async {},
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
//                     child: Text(
//                       'Recojo de donacion',
//                       style: FlutterFlowTheme.of(context).displaySmall.override(
//                         fontFamily: 'Inter',
//                         letterSpacing: 0.0,
//                       ),
//                     ),
//                   ),
//                   Form(
//                     key: _model.formKey,
//                     autovalidateMode: AutovalidateMode.disabled,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(
//                               0.0, 18.0, 0.0, 0.0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0.0, 0.0, 0.0, 4.0),
//                                 child: Text(
//                                   'Voluntario',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyMedium
//                                       .override(
//                                     fontFamily: 'Inter',
//                                     letterSpacing: 0.0,
//                                   ),
//                                 ),
//                               ),
//                               TextFormField(
//                                 controller: _model.fullNameTextController,
//                                 focusNode: _model.fullNameFocusNode,
//                                 autofocus: false,
//                                 autofillHints: [AutofillHints.name],
//                                 textCapitalization: TextCapitalization.words,
//                                 textInputAction: TextInputAction.next,
//                                 obscureText: false,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context)
//                                           .alternate,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color:
//                                       FlutterFlowTheme.of(context).primary,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   errorBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context).error,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   focusedErrorBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context).error,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   filled: true,
//                                   fillColor: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                 ),
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Inter',
//                                   fontSize: 16.0,
//                                   letterSpacing: 0.0,
//                                   fontWeight: FontWeight.w500,
//                                   lineHeight: 1.0,
//                                 ),
//                                 minLines: 1,
//                                 cursorColor:
//                                 FlutterFlowTheme.of(context).primary,
//                                 validator: _model
//                                     .fullNameTextControllerValidator
//                                     .asValidator(context),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(
//                               0.0, 18.0, 0.0, 0.0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0.0, 0.0, 0.0, 4.0),
//                                 child: Text(
//                                   'Fecha y hora',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyMedium
//                                       .override(
//                                     fontFamily: 'Inter',
//                                     letterSpacing: 0.0,
//                                   ),
//                                 ),
//                               ),
//                               TextFormField(
//                                 controller: _model.emailAddressTextController,
//                                 focusNode: _model.emailAddressFocusNode,
//                                 autofocus: false,
//                                 autofillHints: [AutofillHints.email],
//                                 textInputAction: TextInputAction.next,
//                                 obscureText: false,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context)
//                                           .alternate,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color:
//                                       FlutterFlowTheme.of(context).primary,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   errorBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context).error,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   focusedErrorBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context).error,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   filled: true,
//                                   fillColor: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                 ),
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Inter',
//                                   fontSize: 16.0,
//                                   letterSpacing: 0.0,
//                                   fontWeight: FontWeight.w500,
//                                   lineHeight: 1.0,
//                                 ),
//                                 minLines: 1,
//                                 keyboardType: TextInputType.emailAddress,
//                                 cursorColor:
//                                 FlutterFlowTheme.of(context).primary,
//                                 validator: _model
//                                     .emailAddressTextControllerValidator
//                                     .asValidator(context),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(
//                               0.0, 18.0, 0.0, 0.0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0.0, 0.0, 0.0, 4.0),
//                                 child: Text(
//                                   'Ubicacion',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyMedium
//                                       .override(
//                                     fontFamily: 'Inter',
//                                     letterSpacing: 0.0,
//                                   ),
//                                 ),
//                               ),
//                               TextFormField(
//                                 controller: _model.passwordTextController,
//                                 focusNode: _model.passwordFocusNode,
//                                 autofocus: false,
//                                 autofillHints: [AutofillHints.newPassword],
//                                 textInputAction: TextInputAction.done,
//                                 obscureText: !_model.passwordVisibility,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context)
//                                           .alternate,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color:
//                                       FlutterFlowTheme.of(context).primary,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   errorBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context).error,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   focusedErrorBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: FlutterFlowTheme.of(context).error,
//                                       width: 1.0,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8.0),
//                                   ),
//                                   filled: true,
//                                   fillColor: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                   suffixIcon: InkWell(
//                                     onTap: () => setState(
//                                           () => _model.passwordVisibility =
//                                       !_model.passwordVisibility,
//                                     ),
//                                     focusNode: FocusNode(skipTraversal: true),
//                                     child: Icon(
//                                       _model.passwordVisibility
//                                           ? Icons.visibility_outlined
//                                           : Icons.visibility_off_outlined,
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryText,
//                                       size: 18.0,
//                                     ),
//                                   ),
//                                 ),
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Inter',
//                                   fontSize: 16.0,
//                                   letterSpacing: 0.0,
//                                   fontWeight: FontWeight.w500,
//                                   lineHeight: 1.0,
//                                 ),
//                                 cursorColor:
//                                 FlutterFlowTheme.of(context).primary,
//                                 validator: _model
//                                     .passwordTextControllerValidator
//                                     .asValidator(context),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
//                     child: FFButtonWidget(
//                       onPressed: () {
//                         print('Button pressed ...');
//                       },
//                       text: 'Aceptar',
//                       options: FFButtonOptions(
//                         width: MediaQuery.sizeOf(context).width * 1.0,
//                         height: 40.0,
//                         padding: EdgeInsetsDirectional.fromSTEB(
//                             24.0, 10.0, 24.0, 0.0),
//                         iconPadding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                         color: FlutterFlowTheme.of(context).primary,
//                         textStyle:
//                         FlutterFlowTheme.of(context).titleSmall.override(
//                           fontFamily: 'Inter',
//                           color: Colors.white,
//                           letterSpacing: 0.0,
//                         ),
//                         elevation: 3.0,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1.0,
//                         ),
//                         borderRadius: BorderRadius.circular(10.0),
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
