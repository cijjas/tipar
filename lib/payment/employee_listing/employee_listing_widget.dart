import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'employee_listing_model.dart';
export 'employee_listing_model.dart';

class EmployeeListingWidget extends StatefulWidget {
  const EmployeeListingWidget({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final DocumentReference? restaurant;

  @override
  _EmployeeListingWidgetState createState() => _EmployeeListingWidgetState();
}

class _EmployeeListingWidgetState extends State<EmployeeListingWidget> {
  late EmployeeListingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmployeeListingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<BusinessRecord>(
      stream: BusinessRecord.getDocument(widget.restaurant!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).mainbackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final employeeListingBusinessRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).mainbackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 711.0,
                    height: 800.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYYAAANMCAYAAABYbAoeAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAABOOSURBVHgB7d3Lj93lfcfxJ8Y3wIiLqE1Vp6TdmE1D1VRKu4FNJZbdsey/UJZd2X+BN1kQqUhV7F1CNkRKCVIqlUptkrpS7BIjGQQewLUJtusLtvGFQM4z4589H+fYM3PmXH6X10sazZkZlui8/Xyf5/mdb1y7fvPrAgC3bSkAsIowABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgACMIAQBAGAIIwABCEAYAgDAAEYQAgCAMAQRgA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',
                        ).image,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              22.0, 25.0, 22.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 600.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 4.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 85.6,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Text(
                                              employeeListingBusinessRecord
                                                  .name,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Lexend',
                                                    color: Color(0xFF132D4A),
                                                    fontSize: 32.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    ],
                                  ),
                                ),
                                StreamBuilder<List<EmployeesRecord>>(
                                  stream: queryEmployeesRecord(),
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
                                    List<EmployeesRecord>
                                        wrapEmployeesRecordList =
                                        snapshot.data!;
                                    return Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: List.generate(
                                          wrapEmployeesRecordList.length,
                                          (wrapIndex) {
                                        final wrapEmployeesRecord =
                                            wrapEmployeesRecordList[wrapIndex];
                                        return StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              wrapEmployeesRecord.id!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                              );
                                            }
                                            final containerUsersRecord =
                                                snapshot.data!;
                                            return Container(
                                              width: 315.0,
                                              height: 115.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 105.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF0FAFF),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                0.0, 4.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 315.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              70.0,
                                                                          height:
                                                                              70.0,
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            wrapEmployeesRecord.photo,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              wrapEmployeesRecord.firstName,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Lexend',
                                                                                    fontSize: 15.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'IngresoMonto',
                                                                              queryParameters: {
                                                                                'userref': serializeParam(
                                                                                  containerUsersRecord.reference,
                                                                                  ParamType.DocumentReference,
                                                                                ),
                                                                              }.withoutNulls,
                                                                            );
                                                                          },
                                                                          text:
                                                                              'tipar',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                70.0,
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0xFF054B92),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Lexend',
                                                                                  color: Colors.white,
                                                                                ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
