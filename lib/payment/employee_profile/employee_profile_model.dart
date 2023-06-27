import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmployeeProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FirstNameField widget.
  TextEditingController? firstNameFieldController1;
  String? Function(BuildContext, String?)? firstNameFieldController1Validator;
  // State field(s) for LastNameField widget.
  TextEditingController? lastNameFieldController;
  String? Function(BuildContext, String?)? lastNameFieldControllerValidator;
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for PhoneField widget.
  TextEditingController? phoneFieldController;
  String? Function(BuildContext, String?)? phoneFieldControllerValidator;
  // State field(s) for BusinessField widget.
  TextEditingController? businessFieldController;
  String? Function(BuildContext, String?)? businessFieldControllerValidator;
  // State field(s) for FirstNameField widget.
  TextEditingController? firstNameFieldController2;
  String? Function(BuildContext, String?)? firstNameFieldController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    firstNameFieldController1?.dispose();
    lastNameFieldController?.dispose();
    emailFieldController?.dispose();
    phoneFieldController?.dispose();
    businessFieldController?.dispose();
    firstNameFieldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
