import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'crear_entrenador_widget.dart' show CrearEntrenadorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearEntrenadorModel extends FlutterFlowModel<CrearEntrenadorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtfldNombreE widget.
  FocusNode? txtfldNombreEFocusNode;
  TextEditingController? txtfldNombreEController;
  String? Function(BuildContext, String?)? txtfldNombreEControllerValidator;
  // State field(s) for txtfldDescripcion widget.
  FocusNode? txtfldDescripcionFocusNode;
  TextEditingController? txtfldDescripcionController;
  String? Function(BuildContext, String?)? txtfldDescripcionControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtfldNombreEFocusNode?.dispose();
    txtfldNombreEController?.dispose();

    txtfldDescripcionFocusNode?.dispose();
    txtfldDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
