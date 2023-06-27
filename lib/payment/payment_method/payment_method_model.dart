import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethodModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for NombreTarjeta widget.
  TextEditingController? nombreTarjetaController;
  String? Function(BuildContext, String?)? nombreTarjetaControllerValidator;
  // State field(s) for ApellidoTarjeta widget.
  TextEditingController? apellidoTarjetaController;
  String? Function(BuildContext, String?)? apellidoTarjetaControllerValidator;
  // State field(s) for NumeroTarjeta widget.
  TextEditingController? numeroTarjetaController;
  String? Function(BuildContext, String?)? numeroTarjetaControllerValidator;
  // State field(s) for expmonth widget.
  TextEditingController? expmonthController;
  String? Function(BuildContext, String?)? expmonthControllerValidator;
  // State field(s) for expyear widget.
  TextEditingController? expyearController;
  String? Function(BuildContext, String?)? expyearControllerValidator;
  // State field(s) for ExpDate widget.
  TextEditingController? expDateController;
  String? Function(BuildContext, String?)? expDateControllerValidator;
  // State field(s) for DNI widget.
  TextEditingController? dniController;
  String? Function(BuildContext, String?)? dniControllerValidator;
  // State field(s) for PaypalCheckbox widget.
  bool? paypalCheckboxValue;
  // State field(s) for AppleTextbox widget.
  bool? appleTextboxValue;
  // Stores action output result for [Backend Call - API (Get Card Token)] action in Row widget.
  ApiCallResponse? apiResulteq8;
  // Stores action output result for [Backend Call - API (Create Card Payment)] action in Row widget.
  ApiCallResponse? apiResult4gy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreTarjetaController?.dispose();
    apellidoTarjetaController?.dispose();
    numeroTarjetaController?.dispose();
    expmonthController?.dispose();
    expyearController?.dispose();
    expDateController?.dispose();
    dniController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
