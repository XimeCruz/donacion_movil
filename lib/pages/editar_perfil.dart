// import '../model/editar_perfil_model.dart';
// import '/components/flecha_atras_widget.dart';
// import '/components/title_with_subtitle/title_with_subtitle_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
//
//
// class EditarPerfilWidget extends StatefulWidget {
//   const EditarPerfilWidget({super.key});
//
//   @override
//   State<EditarPerfilWidget> createState() => _EditarPerfilWidgetState();
// }
//
// class _EditarPerfilWidgetState extends State<EditarPerfilWidget> {
//   late EditarPerfilModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = EditarPerfilModel();
//
//     logFirebaseEvent('screen_view',
//         parameters: {'screen_name': 'EditarPerfil'});
//     _model.fullNameTextController ??=
//         TextEditingController(text: currentUserDisplayName);
//     _model.fullNameFocusNode ??= FocusNode();
//
//     _model.emailAddressTextController ??=
//         TextEditingController(text: currentUserEmail);
//     _model.emailAddressFocusNode ??= FocusNode();
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
//                       actionButton: true,
//                       actionButtonText: 'Save',
//                       optionsButton: false,
//                       actionButtonAction: () async {
//                         // logFirebaseEvent(
//                         //     'EDITAR_PERFIL_Container_or1jni5i_CALLBAC');
//                         // logFirebaseEvent('flechaAtras_backend_call');
//                         //
//                         // await currentUserReference!
//                         //     .update(createUsersRecordData(
//                         //   displayName: _model.fullNameTextController.text,
//                         // ));
//                         // logFirebaseEvent('flechaAtras_update_page_state');
//                         setState(() {
//                           _model.unsavedChanges = false;
//                         });
//                       },
//                       optionsButtonAction: () async {},
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
//                     child: Text(
//                       'Editar perfil',
//                       style: FlutterFlowTheme.of(context).displaySmall.copyWith(
//                         fontFamily: 'Inter',
//                         letterSpacing: 0.0,
//                       ),
//                     ),
//                   ),
//                   Column(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 0.0, 0.0, 4.0),
//                               child: Text(
//                                 'Nombre completo',
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .copyWith(
//                                   fontFamily: 'Inter',
//                                   letterSpacing: 0.0,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 4.0, 0.0, 0.0),
//                               child: AuthUserStreamWidget(
//                                 builder: (context) => TextFormField(
//                                   controller: _model.fullNameTextController,
//                                   focusNode: _model.fullNameFocusNode,
//                                   onChanged: (_) => EasyDebounce.debounce(
//                                     '_model.fullNameTextController',
//                                     Duration(milliseconds: 2000),
//                                         () async {
//                                       logFirebaseEvent(
//                                           'EDITAR_PERFIL_fullName_ON_TEXTFIELD_CHAN');
//                                       logFirebaseEvent(
//                                           'fullName_update_page_state');
//                                       setState(() {
//                                         _model.unsavedChanges = true;
//                                       });
//                                     },
//                                   ),
//                                   autofocus: false,
//                                   autofillHints: [AutofillHints.name],
//                                   textCapitalization: TextCapitalization.words,
//                                   textInputAction: TextInputAction.next,
//                                   obscureText: false,
//                                   decoration: InputDecoration(
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryBackground,
//                                         width: 1.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .primary,
//                                         width: 1.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     errorBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color:
//                                         FlutterFlowTheme.of(context).error,
//                                         width: 1.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     focusedErrorBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color:
//                                         FlutterFlowTheme.of(context).error,
//                                         width: 1.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: FlutterFlowTheme.of(context)
//                                         .secondaryBackground,
//                                   ),
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyMedium
//                                       .copyWith(
//                                     fontFamily: 'Inter',
//                                     fontSize: 16.0,
//                                     letterSpacing: 0.0,
//                                     fontWeight: FontWeight.w500,
//                                     height: 1.0,
//                                   ),
//                                   minLines: 1,
//                                   cursorColor:
//                                   FlutterFlowTheme.of(context).primary,
//                                   validator: _model
//                                       .fullNameTextControllerValidator
//                                       .asValidator(context),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   wrapWithModel(
//                     model: _model.titleWithSubtitleModel1,
//                     updateCallback: () => setState(() {}),
//                     child: TitleWithSubtitleWidget(
//                       title: 'Cambiar contraseña',
//                       subtitle:
//                       'Recibiras un mensaje para cambiar tu contraseña.',
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
//                     child: FFButtonWidget(
//                       onPressed: () async {
//                         logFirebaseEvent(
//                             'EDITAR_PERFIL_CAMBIAR_CONSTRASEÑA_BTN_ON');
//                         logFirebaseEvent('Button_auth');
//                         if (_model.emailAddressTextController.text.isEmpty) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text(
//                                 'Email required!',
//                               ),
//                             ),
//                           );
//                           return;
//                         }
//                         await authManager.resetPassword(
//                           email: _model.emailAddressTextController.text,
//                           context: context,
//                         );
//                       },
//                       text: 'Cambiar constraseña',
//                       options: FFButtonOptions(
//                         width: double.infinity,
//                         height: 50.0,
//                         padding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                         iconPadding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                         color: FlutterFlowTheme.of(context).primary,
//                         textStyle:
//                         FlutterFlowTheme.of(context).bodyMedium.copyWith(
//                           fontFamily: 'Inter',
//                           color: FlutterFlowTheme.of(context)
//                               .primaryBackground,
//                           letterSpacing: 0.0,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         elevation: 0.0,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1.0,
//                         ),
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                   ),
//                   wrapWithModel(
//                     model: _model.titleWithSubtitleModel2,
//                     updateCallback: () => setState(() {}),
//                     child: TitleWithSubtitleWidget(
//                       title: 'Eliminar cuenta',
//                       subtitle:
//                       'Tu cuenta sera eliminada definitivament y no podras recuperarla.',
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 48.0),
//                     child: FFButtonWidget(
//                       onPressed: () async {
//                         // logFirebaseEvent(
//                         //     'EDITAR_PERFIL_ELIMINAR_CUENTA_BTN_ON_TAP');
//                         // logFirebaseEvent('Button_auth');
//                         // await authManager.deleteUser(context);
//                         // logFirebaseEvent('Button_navigate_to');
//                         //
//                         // context.goNamed(
//                         //   'Splash',
//                         //   extra: <String, dynamic>{
//                         //     kTransitionInfoKey: TransitionInfo(
//                         //       hasTransition: true,
//                         //       transitionType: PageTransitionType.fade,
//                         //       duration: Duration(milliseconds: 0),
//                         //     ),
//                         //   },
//                         // );
//                       },
//                       text: 'Eliminar cuenta',
//                       options: FFButtonOptions(
//                         width: double.infinity,
//                         height: 50.0,
//                         padding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                         iconPadding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                         color: Color(0xFFFFD4D4),
//                         textStyle:
//                         FlutterFlowTheme.of(context).bodyMedium.copyWith(
//                           fontFamily: 'Inter',
//                           color: Color(0xFFB74D4D),
//                           letterSpacing: 0.0,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         elevation: 0.0,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1.0,
//                         ),
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                   ),
//                   TextFormField(
//                     controller: _model.emailAddressTextController,
//                     focusNode: _model.emailAddressFocusNode,
//                     autofocus: false,
//                     textCapitalization: TextCapitalization.words,
//                     readOnly: true,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       isDense: true,
//                       enabledBorder: InputBorder.none,
//                       focusedBorder: InputBorder.none,
//                       errorBorder: InputBorder.none,
//                       focusedErrorBorder: InputBorder.none,
//                     ),
//                     style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
//                       fontFamily: 'Inter',
//                       color: FlutterFlowTheme.of(context).primaryBackground,
//                       fontSize: 1.0,
//                       letterSpacing: 0.0,
//                       fontWeight: FontWeight.w500,
//                       height: 1.0,
//                     ),
//                     minLines: 1,
//                     validator: _model.emailAddressTextControllerValidator
//                         .asValidator(context),
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
