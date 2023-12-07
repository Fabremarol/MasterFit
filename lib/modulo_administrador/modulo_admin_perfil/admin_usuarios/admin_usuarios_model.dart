import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/modulo_administrador/modulo_admin_perfil/editar_usuarios_admin_component/editar_usuarios_admin_component_widget.dart';
import 'admin_usuarios_widget.dart' show AdminUsuariosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminUsuariosModel extends FlutterFlowModel<AdminUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtfldBuscar widget.
  final txtfldBuscarKey = GlobalKey();
  FocusNode? txtfldBuscarFocusNode;
  TextEditingController? txtfldBuscarController;
  String? txtfldBuscarSelectedOption;
  String? Function(BuildContext, String?)? txtfldBuscarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtfldBuscarFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
