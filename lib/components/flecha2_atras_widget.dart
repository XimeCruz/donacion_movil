import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';

class Flecha2AtrasWidget extends StatelessWidget {
  final bool backButton;
  final bool actionButton;
  final String? actionButtonText;
  final Future Function()? actionButtonAction;
  final bool optionsButton;
  final Future Function()? optionsButtonAction;

  const Flecha2AtrasWidget({
    Key? key,
    required this.backButton,
    this.actionButton = false,
    this.actionButtonText,
    this.actionButtonAction,
    this.optionsButton = false,
    required this.optionsButtonAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (backButton)
          FlutterFlowIconButton(
            borderColor: Colors.black,
            borderRadius: 24.0,
            borderWidth: 1.0,
            buttonSize: 44.0,
            fillColor: Colors.black,
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 18.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (actionButton)
              ElevatedButton(
                onPressed: () async {
                  if (actionButtonAction != null) {
                    await actionButtonAction!();
                  }
                },
                child: Text(actionButtonText ?? 'Button'),
              ),
            if (optionsButton)
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black, // Color del icono
                  size: 18.0,
                ),
                color: Color(0xFF4DB051), // Color de fondo del botón
                onPressed: () async {
                  if (optionsButtonAction != null) {
                    await optionsButtonAction!();
                  }
                },
              ),
          ].expand((widget) => [widget, SizedBox(width: 8.0)]).toList(),
        ),
      ],
    );
  }
}
