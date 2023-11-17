import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'crear_home_rutina_widget.dart' show CrearHomeRutinaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearHomeRutinaModel extends FlutterFlowModel<CrearHomeRutinaWidget> {
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
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtfldNombreFocusNode?.dispose();
    txtfldNombreController?.dispose();

    txtfldDescripcionFocusNode?.dispose();
    txtfldDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
