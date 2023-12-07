import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_medidas_widget.dart' show EditarMedidasWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarMedidasModel extends FlutterFlowModel<EditarMedidasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for editarEdad widget.
  FocusNode? editarEdadFocusNode;
  TextEditingController? editarEdadController;
  String? Function(BuildContext, String?)? editarEdadControllerValidator;
  // State field(s) for editaPeso widget.
  FocusNode? editaPesoFocusNode;
  TextEditingController? editaPesoController;
  String? Function(BuildContext, String?)? editaPesoControllerValidator;
  // State field(s) for editarAltura widget.
  FocusNode? editarAlturaFocusNode;
  TextEditingController? editarAlturaController;
  String? Function(BuildContext, String?)? editarAlturaControllerValidator;
  // State field(s) for editarGrasa widget.
  FocusNode? editarGrasaFocusNode;
  TextEditingController? editarGrasaController;
  String? Function(BuildContext, String?)? editarGrasaControllerValidator;
  // State field(s) for editarIMC widget.
  FocusNode? editarIMCFocusNode;
  TextEditingController? editarIMCController;
  String? Function(BuildContext, String?)? editarIMCControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    editarEdadFocusNode?.dispose();
    editarEdadController?.dispose();

    editaPesoFocusNode?.dispose();
    editaPesoController?.dispose();

    editarAlturaFocusNode?.dispose();
    editarAlturaController?.dispose();

    editarGrasaFocusNode?.dispose();
    editarGrasaController?.dispose();

    editarIMCFocusNode?.dispose();
    editarIMCController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
