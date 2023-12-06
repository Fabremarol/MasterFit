import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'bs_editar_rutinas_widget.dart' show BsEditarRutinasWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsEditarRutinasModel extends FlutterFlowModel<BsEditarRutinasWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtfldNombreRutina widget.
  FocusNode? txtfldNombreRutinaFocusNode;
  TextEditingController? txtfldNombreRutinaController;
  String? Function(BuildContext, String?)?
      txtfldNombreRutinaControllerValidator;
  // State field(s) for txtfldDescripcion widget.
  FocusNode? txtfldDescripcionFocusNode;
  TextEditingController? txtfldDescripcionController;
  String? Function(BuildContext, String?)? txtfldDescripcionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtfldNombreRutinaFocusNode?.dispose();
    txtfldNombreRutinaController?.dispose();

    txtfldDescripcionFocusNode?.dispose();
    txtfldDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
