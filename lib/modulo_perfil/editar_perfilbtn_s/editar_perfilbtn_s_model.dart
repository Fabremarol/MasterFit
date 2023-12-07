import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'editar_perfilbtn_s_widget.dart' show EditarPerfilbtnSWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilbtnSModel extends FlutterFlowModel<EditarPerfilbtnSWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txteditarnombre widget.
  FocusNode? txteditarnombreFocusNode;
  TextEditingController? txteditarnombreController;
  String? Function(BuildContext, String?)? txteditarnombreControllerValidator;
  // State field(s) for txtEditarNMiembro widget.
  FocusNode? txtEditarNMiembroFocusNode;
  TextEditingController? txtEditarNMiembroController;
  String? Function(BuildContext, String?)? txtEditarNMiembroControllerValidator;
  // State field(s) for txtEditarCorreo widget.
  FocusNode? txtEditarCorreoFocusNode;
  TextEditingController? txtEditarCorreoController;
  String? Function(BuildContext, String?)? txtEditarCorreoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txteditarnombreFocusNode?.dispose();
    txteditarnombreController?.dispose();

    txtEditarNMiembroFocusNode?.dispose();
    txtEditarNMiembroController?.dispose();

    txtEditarCorreoFocusNode?.dispose();
    txtEditarCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
