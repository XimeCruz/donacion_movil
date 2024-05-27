// import '/auth/firebase_auth/auth_util.dart';
// import '/components/flecha_atras_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'olvido_contrasenia_widget.dart' show OlvidoContraseniaWidget;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// class OlvidoContraseniaModel extends FlutterFlowModel<OlvidoContraseniaWidget> {
//   ///  State fields for stateful widgets in this page.
//
//   final unfocusNode = FocusNode();
//   final formKey = GlobalKey<FormState>();
//   // Model for flechaAtras component.
//   late FlechaAtrasModel flechaAtrasModel;
//   // State field(s) for emailAddress widget.
//   FocusNode? emailAddressFocusNode;
//   TextEditingController? emailAddressTextController;
//   String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
//   String? _emailAddressTextControllerValidator(
//       BuildContext context, String? val) {
//     if (val == null || val.isEmpty) {
//       return 'Email is required.';
//     }
//
//     if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
//       return 'Has to be a valid email address.';
//     }
//     return null;
//   }
//
//   @override
//   void initState(BuildContext context) {
//     flechaAtrasModel = createModel(context, () => FlechaAtrasModel());
//     emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
//   }
//
//   @override
//   void dispose() {
//     unfocusNode.dispose();
//     flechaAtrasModel.dispose();
//     emailAddressFocusNode?.dispose();
//     emailAddressTextController?.dispose();
//   }
// }
