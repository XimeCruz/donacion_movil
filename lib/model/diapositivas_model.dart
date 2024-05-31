
// import 'package:donacion/components/flecha_atras_model.dart';
// import 'package:donacion/flutter_flow/flutter_flow_model.dart';
// import 'package:donacion/pages/diapositivas_widget.dart';
// import 'package:donacion/pages/diapositivas_widget.dart' show DiapositivasWidget;

import 'package:flutter/material.dart';

class DiapositivasModel {
  final unfocusNode = FocusNode();
  PageController? pageViewController;

  void dispose() {
    unfocusNode.dispose();
    pageViewController?.dispose();
  }
}


// class DiapositivasModel extends FlutterFlowModel<DiapositivasWidget> {
//   ///  State fields for stateful widgets in this page.

//   final unfocusNode = FocusNode();
//   // Model for flechaAtras component.
//   late FlechaAtrasModel flechaAtrasModel;
//   // State field(s) for PageView widget.
//   PageController? pageViewController;

//   int get pageViewCurrentIndex => pageViewController != null &&
//           pageViewController!.hasClients &&
//           pageViewController!.page != null
//       ? pageViewController!.page!.round()
//       : 0;

//   @override
//   void initState(BuildContext context) {
//     flechaAtrasModel = FlechaAtrasModel();
//   }

// }
