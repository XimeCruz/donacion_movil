import 'package:flutter/material.dart';

abstract class FlutterFlowModel<T extends StatefulWidget> extends ChangeNotifier {
  void initState(BuildContext context) {}
  void dispose() {}
  void maybeDispose() {
    dispose();
  }

  void onUpdate() {
    notifyListeners();
  }
}

T createModel<T extends FlutterFlowModel>(BuildContext context, T Function() create) {
  return create();
}
