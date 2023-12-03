import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tabla_usuarios_component_widget.dart' show TablaUsuariosComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TablaUsuariosComponentModel
    extends FlutterFlowModel<TablaUsuariosComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtfldBuscar widget.
  FocusNode? txtfldBuscarFocusNode;
  TextEditingController? txtfldBuscarController;
  String? Function(BuildContext, String?)? txtfldBuscarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtfldBuscarFocusNode?.dispose();
    txtfldBuscarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
