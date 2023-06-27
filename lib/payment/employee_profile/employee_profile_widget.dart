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
import 'employee_profile_model.dart';
export 'employee_profile_model.dart';

class EmployeeProfileWidget extends StatefulWidget {
  const EmployeeProfileWidget({Key? key}) : super(key: key);

  @override
  _EmployeeProfileWidgetState createState() => _EmployeeProfileWidgetState();
}

class _EmployeeProfileWidgetState extends State<EmployeeProfileWidget> {
  late EmployeeProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmployeeProfileModel());

    _model.firstNameFieldController1 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.firstName, ''));
    _model.lastNameFieldController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.lastName, ''));
    _model.emailFieldController ??=
        TextEditingController(text: currentUserEmail);
    _model.phoneFieldController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.businessFieldController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.worksIn, ''));
    _model.firstNameFieldController2 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.city, ''));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF6F8FA),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 440.0,
                height: 799.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYYAAANMCAYAAABYbAoeAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAABOOSURBVHgB7d3Lj93lfcfxJ8Y3wIiLqE1Vp6TdmE1D1VRKu4FNJZbdsey/UJZd2X+BN1kQqUhV7F1CNkRKCVIqlUptkrpS7BIjGQQewLUJtusLtvGFQM4z4589H+fYM3PmXH6X10sazZkZlui8/Xyf5/mdb1y7fvPrAgC3bSkAsIowABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgA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',
                    ).image,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 61.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).mainbackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/tip.png',
                                  width: 70.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.55, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('employee-home');
                                  },
                                  child: Text(
                                    'tipar',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF041A30),
                                          fontSize: 40.0,
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.55, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      75.0, 0.0, 22.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    icon: Icon(
                                      Icons.settings,
                                      color: FlutterFlowTheme.of(context)
                                          .letrasgris,
                                      size: 35.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('employee-settings');
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            22.0, 25.0, 22.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 590.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: FlutterFlowTheme.of(context).letrasgris,
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Tu Perfil',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .letrasgris,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 123.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];
                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFile =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  setState(() {});
                                                  return;
                                                }
                                              }
                                            },
                                            child: Container(
                                              width: 110.0,
                                              height: 110.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  currentUserPhoto,
                                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault(
                                                  currentUserDocument
                                                      ?.firstName,
                                                  ''),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .letrasnegro,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault(
                                                  currentUserDocument?.city,
                                                  ''),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF657786),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 351.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 15.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mainbackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 4.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) =>
                                                    StreamBuilder<
                                                        List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        firstNameFieldUsersRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final firstNameFieldUsersRecord =
                                                        firstNameFieldUsersRecordList
                                                                .isNotEmpty
                                                            ? firstNameFieldUsersRecordList
                                                                .first
                                                            : null;
                                                    return TextFormField(
                                                      controller: _model
                                                          .firstNameFieldController1,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Nombre',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF00071B),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        hintText:
                                                            '[Some hint text...]',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF657786),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend',
                                                                color: Color(
                                                                    0xFF00071B),
                                                              ),
                                                      validator: _model
                                                          .firstNameFieldController1Validator
                                                          .asValidator(context),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 15.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mainbackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 4.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) =>
                                                    StreamBuilder<
                                                        List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        lastNameFieldUsersRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final lastNameFieldUsersRecord =
                                                        lastNameFieldUsersRecordList
                                                                .isNotEmpty
                                                            ? lastNameFieldUsersRecordList
                                                                .first
                                                            : null;
                                                    return TextFormField(
                                                      controller: _model
                                                          .lastNameFieldController,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Apellido',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF00071B),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        hintText:
                                                            '[Some hint text...]',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF657786),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend',
                                                                color: Color(
                                                                    0xFF00071B),
                                                              ),
                                                      validator: _model
                                                          .lastNameFieldControllerValidator
                                                          .asValidator(context),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 15.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mainbackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 4.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<UsersRecord>>(
                                                stream: queryUsersRecord(
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UsersRecord>
                                                      emailFieldUsersRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final emailFieldUsersRecord =
                                                      emailFieldUsersRecordList
                                                              .isNotEmpty
                                                          ? emailFieldUsersRecordList
                                                              .first
                                                          : null;
                                                  return TextFormField(
                                                    controller: _model
                                                        .emailFieldController,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend',
                                                                color: Color(
                                                                    0xFF00071B),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      hintText:
                                                          '[Some hint text...]',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend',
                                                                color: Color(
                                                                    0xFF657786),
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Colors.transparent,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          color:
                                                              Color(0xFF00071B),
                                                        ),
                                                    validator: _model
                                                        .emailFieldControllerValidator
                                                        .asValidator(context),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 15.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mainbackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 4.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) =>
                                                    StreamBuilder<
                                                        List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        phoneFieldUsersRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final phoneFieldUsersRecord =
                                                        phoneFieldUsersRecordList
                                                                .isNotEmpty
                                                            ? phoneFieldUsersRecordList
                                                                .first
                                                            : null;
                                                    return TextFormField(
                                                      controller: _model
                                                          .phoneFieldController,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Número de teléfono',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF00071B),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        hintText:
                                                            '[Some hint text...]',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF657786),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend',
                                                                color: Color(
                                                                    0xFF00071B),
                                                              ),
                                                      validator: _model
                                                          .phoneFieldControllerValidator
                                                          .asValidator(context),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (valueOrDefault<bool>(
                                                currentUserDocument?.isEmployee,
                                                false) ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mainbackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 3.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 4.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<UsersRecord>>(
                                                    stream: queryUsersRecord(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<UsersRecord>
                                                          businessFieldUsersRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final businessFieldUsersRecord =
                                                          businessFieldUsersRecordList
                                                                  .isNotEmpty
                                                              ? businessFieldUsersRecordList
                                                                  .first
                                                              : null;
                                                      return TextFormField(
                                                        controller: _model
                                                            .businessFieldController,
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Comercio\n',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend',
                                                                    color: Color(
                                                                        0xFF00071B),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                          hintText:
                                                              '[Some hint text...]',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend',
                                                                    color: Color(
                                                                        0xFF657786),
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: Colors
                                                              .transparent,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF00071B),
                                                                ),
                                                        validator: _model
                                                            .businessFieldControllerValidator
                                                            .asValidator(
                                                                context),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 15.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mainbackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 4.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) =>
                                                    StreamBuilder<
                                                        List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        firstNameFieldUsersRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final firstNameFieldUsersRecord =
                                                        firstNameFieldUsersRecordList
                                                                .isNotEmpty
                                                            ? firstNameFieldUsersRecordList
                                                                .first
                                                            : null;
                                                    return TextFormField(
                                                      controller: _model
                                                          .firstNameFieldController2,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Ciudad',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF00071B),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        hintText:
                                                            '[Some hint text...]',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: Color(
                                                                      0xFF657786),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend',
                                                                color: Color(
                                                                    0xFF00071B),
                                                              ),
                                                      validator: _model
                                                          .firstNameFieldController2Validator
                                                          .asValidator(context),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(
                                      currentUserReference!),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    final buttonUsersRecord = snapshot.data!;
                                    return FFButtonWidget(
                                      onPressed: () async {
                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          firstName: _model
                                              .firstNameFieldController1.text,
                                          lastName: _model
                                              .lastNameFieldController.text,
                                          email:
                                              _model.emailFieldController.text,
                                          phoneNumber:
                                              _model.phoneFieldController.text,
                                        ));
                                        if (_model.uploadedFileUrl != null &&
                                                _model.uploadedFileUrl != ''
                                            ? true
                                            : false) {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            photoUrl: _model.uploadedFileUrl,
                                          ));
                                        }

                                        context.pushNamed('employee-profile');
                                      },
                                      text: 'Guardar Cambios',
                                      options: FFButtonOptions(
                                        width: 130.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF104FA5),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFF6F8FA),
                                              fontSize: 12.0,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
