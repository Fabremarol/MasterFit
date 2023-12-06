import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'bs_editar_ejercicios_widget.dart' show BsEditarEjerciciosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsEditarEjerciciosModel
    extends FlutterFlowModel<BsEditarEjerciciosWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for txtfldNombre widget.
  FocusNode? txtfldNombreFocusNode;
  TextEditingController? txtfldNombreController;
  String? Function(BuildContext, String?)? txtfldNombreControllerValidator;
  // State field(s) for txtfldParteCuerpo widget.
  FocusNode? txtfldParteCuerpoFocusNode;
  TextEditingController? txtfldParteCuerpoController;
  String? Function(BuildContext, String?)? txtfldParteCuerpoControllerValidator;
  // State field(s) for txtfldReps widget.
  FocusNode? txtfldRepsFocusNode;
  TextEditingController? txtfldRepsController;
  String? Function(BuildContext, String?)? txtfldRepsControllerValidator;
  // State field(s) for txtfldSets widget.
  FocusNode? txtfldSetsFocusNode;
  TextEditingController? txtfldSetsController;
  String? Function(BuildContext, String?)? txtfldSetsControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtfldNombreFocusNode?.dispose();
    txtfldNombreController?.dispose();

    txtfldParteCuerpoFocusNode?.dispose();
    txtfldParteCuerpoController?.dispose();

    txtfldRepsFocusNode?.dispose();
    txtfldRepsController?.dispose();

    txtfldSetsFocusNode?.dispose();
    txtfldSetsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
