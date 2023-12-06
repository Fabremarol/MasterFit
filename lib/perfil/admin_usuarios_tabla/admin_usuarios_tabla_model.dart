import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/perfil/tabla_usuarios_component/tabla_usuarios_component_widget.dart';
import 'admin_usuarios_tabla_widget.dart' show AdminUsuariosTablaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminUsuariosTablaModel
    extends FlutterFlowModel<AdminUsuariosTablaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for tablaUsuariosComponent component.
  late TablaUsuariosComponentModel tablaUsuariosComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tablaUsuariosComponentModel =
        createModel(context, () => TablaUsuariosComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tablaUsuariosComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
