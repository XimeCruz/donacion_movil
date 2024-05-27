// import '/auth/firebase_auth/auth_util.dart';
// import '/backend/backend.dart';
// import '/components/flecha_atras_widget.dart';
// import '/components/title_with_subtitle/title_with_subtitle_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'editar_perfil_widget.dart' show EditarPerfilWidget;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_debounce/easy_debounce.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
//   ///  Local state fields for this page.
//
//   bool unsavedChanges = false;
//
//   ///  State fields for stateful widgets in this page.
//
//   final unfocusNode = FocusNode();
//   // Model for flechaAtras component.
//   late FlechaAtrasModel flechaAtrasModel;
//   // State field(s) for fullName widget.
//   FocusNode? fullNameFocusNode;
//   TextEditingController? fullNameTextController;
//   String? Function(BuildContext, String?)? fullNameTextControllerValidator;
//   // Model for titleWithSubtitle component.
//   late TitleWithSubtitleModel titleWithSubtitleModel1;
//   // Model for titleWithSubtitle component.
//   late TitleWithSubtitleModel titleWithSubtitleModel2;
//   // State field(s) for emailAddress widget.
//   FocusNode? emailAddressFocusNode;
//   TextEditingController? emailAddressTextController;
//   String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
//
//   @override
//   void initState(BuildContext context) {
//     flechaAtrasModel = createModel(context, () => FlechaAtrasModel());
//     titleWithSubtitleModel1 =
//         createModel(context, () => TitleWithSubtitleModel());
//     titleWithSubtitleModel2 =
//         createModel(context, () => TitleWithSubtitleModel());
//   }
//
//   @override
//   void dispose() {
//     unfocusNode.dispose();
//     flechaAtrasModel.dispose();
//     fullNameFocusNode?.dispose();
//     fullNameTextController?.dispose();
//
//     titleWithSubtitleModel1.dispose();
//     titleWithSubtitleModel2.dispose();
//     emailAddressFocusNode?.dispose();
//     emailAddressTextController?.dispose();
//   }
// }