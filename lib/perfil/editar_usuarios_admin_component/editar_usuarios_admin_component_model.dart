import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_usuarios_admin_component_widget.dart'
    show EditarUsuariosAdminComponentWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuariosAdminComponentModel
    extends FlutterFlowModel<EditarUsuariosAdminComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtfldNombre widget.
  FocusNode? txtfldNombreFocusNode;
  TextEditingController? txtfldNombreController;
  String? Function(BuildContext, String?)? txtfldNombreControllerValidator;
  // State field(s) for txtfldCorreo widget.
  FocusNode? txtfldCorreoFocusNode;
  TextEditingController? txtfldCorreoController;
  String? Function(BuildContext, String?)? txtfldCorreoControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtfldNombreFocusNode?.dispose();
    txtfldNombreController?.dispose();

    txtfldCorreoFocusNode?.dispose();
    txtfldCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
