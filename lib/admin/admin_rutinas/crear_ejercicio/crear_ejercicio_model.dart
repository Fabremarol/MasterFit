import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'crear_ejercicio_widget.dart' show CrearEjercicioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearEjercicioModel extends FlutterFlowModel<CrearEjercicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtfldNombre widget.
  FocusNode? txtfldNombreFocusNode;
  TextEditingController? txtfldNombreController;
  String? Function(BuildContext, String?)? txtfldNombreControllerValidator;
  // State field(s) for txtfldDescripcion widget.
  FocusNode? txtfldDescripcionFocusNode;
  TextEditingController? txtfldDescripcionController;
  String? Function(BuildContext, String?)? txtfldDescripcionControllerValidator;
  // State field(s) for txtfldGrupoMuscular widget.
  FocusNode? txtfldGrupoMuscularFocusNode;
  TextEditingController? txtfldGrupoMuscularController;
  String? Function(BuildContext, String?)?
      txtfldGrupoMuscularControllerValidator;
  // State field(s) for txtfldReps widget.
  FocusNode? txtfldRepsFocusNode;
  TextEditingController? txtfldRepsController;
  String? Function(BuildContext, String?)? txtfldRepsControllerValidator;
  // State field(s) for txtfldSets widget.
  FocusNode? txtfldSetsFocusNode;
  TextEditingController? txtfldSetsController;
  String? Function(BuildContext, String?)? txtfldSetsControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtfldNombreFocusNode?.dispose();
    txtfldNombreController?.dispose();

    txtfldDescripcionFocusNode?.dispose();
    txtfldDescripcionController?.dispose();

    txtfldGrupoMuscularFocusNode?.dispose();
    txtfldGrupoMuscularController?.dispose();

    txtfldRepsFocusNode?.dispose();
    txtfldRepsController?.dispose();

    txtfldSetsFocusNode?.dispose();
    txtfldSetsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
