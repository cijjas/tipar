import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for cli-namefield widget.
  TextEditingController? cliNamefieldController;
  String? Function(BuildContext, String?)? cliNamefieldControllerValidator;
  // State field(s) for cli-lastfield widget.
  TextEditingController? cliLastfieldController;
  String? Function(BuildContext, String?)? cliLastfieldControllerValidator;
  // State field(s) for cli-phonefield widget.
  TextEditingController? cliPhonefieldController;
  String? Function(BuildContext, String?)? cliPhonefieldControllerValidator;
  // State field(s) for cli-cityfield widget.
  TextEditingController? cliCityfieldController;
  String? Function(BuildContext, String?)? cliCityfieldControllerValidator;
  // State field(s) for NombreField widget.
  TextEditingController? nombreFieldController;
  String? Function(BuildContext, String?)? nombreFieldControllerValidator;
  // State field(s) for ApellidoField widget.
  TextEditingController? apellidoFieldController;
  String? Function(BuildContext, String?)? apellidoFieldControllerValidator;
  // State field(s) for TelefonoField widget.
  TextEditingController? telefonoFieldController;
  String? Function(BuildContext, String?)? telefonoFieldControllerValidator;
  // State field(s) for EmpleadorField widget.
  TextEditingController? empleadorFieldController;
  String? Function(BuildContext, String?)? empleadorFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    cliNamefieldController?.dispose();
    cliLastfieldController?.dispose();
    cliPhonefieldController?.dispose();
    cliCityfieldController?.dispose();
    nombreFieldController?.dispose();
    apellidoFieldController?.dispose();
    telefonoFieldController?.dispose();
    empleadorFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
