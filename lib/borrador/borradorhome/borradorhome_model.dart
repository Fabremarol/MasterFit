import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/confirma_cita_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'borradorhome_widget.dart' show BorradorhomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BorradorhomeModel extends FlutterFlowModel<BorradorhomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtHora widget.
  FocusNode? txtHoraFocusNode;
  TextEditingController? txtHoraController;
  String? Function(BuildContext, String?)? txtHoraControllerValidator;
  // State field(s) for txtDia widget.
  FocusNode? txtDiaFocusNode;
  TextEditingController? txtDiaController;
  String? Function(BuildContext, String?)? txtDiaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtHoraFocusNode?.dispose();
    txtHoraController?.dispose();

    txtDiaFocusNode?.dispose();
    txtDiaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
