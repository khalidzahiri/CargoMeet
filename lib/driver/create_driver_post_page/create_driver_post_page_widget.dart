import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_driver_post_page_model.dart';
export 'create_driver_post_page_model.dart';

class CreateDriverPostPageWidget extends StatefulWidget {
  const CreateDriverPostPageWidget({super.key});

  @override
  State<CreateDriverPostPageWidget> createState() =>
      _CreateDriverPostPageWidgetState();
}

class _CreateDriverPostPageWidgetState
    extends State<CreateDriverPostPageWidget> {
  late CreateDriverPostPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateDriverPostPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'CreateDriverPostPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    'v8xfbc8i' /* Create a post */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 0.0,
              ),
              body: SafeArea(
                top: true,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: PageView(
                                physics: const NeverScrollableScrollPhysics(),
                                controller: _model
                                        .createDriverPostPageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: FlutterFlowPlacePicker(
                                              iOSGoogleMapsApiKey:
                                                  'AIzaSyA6hngj43FVEP5Vx0tj4ahpk_zZEXs7Azg',
                                              androidGoogleMapsApiKey:
                                                  'AIzaSyAyai7DXr8nMj8wzUKL6L98AwnjiGVMI_4',
                                              webGoogleMapsApiKey:
                                                  'AIzaSyDQR3uBodyHWo9-IEs5WGI6JxiH62inkAw',
                                              onSelect: (place) async {
                                                setState(() => _model
                                                    .placePickerValue1 = place);
                                              },
                                              defaultText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'kz2nj3ex' /* From where? ... */,
                                              ),
                                              icon: Icon(
                                                Icons.place,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 16.0,
                                              ),
                                              buttonOptions: FFButtonOptions(
                                                width: 300.0,
                                                height: 40.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 4.0,
                                                height: 160.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons
                                                    .keyboard_double_arrow_down,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 32.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: FlutterFlowPlacePicker(
                                              iOSGoogleMapsApiKey:
                                                  'AIzaSyA6hngj43FVEP5Vx0tj4ahpk_zZEXs7Azg',
                                              androidGoogleMapsApiKey:
                                                  'AIzaSyAyai7DXr8nMj8wzUKL6L98AwnjiGVMI_4',
                                              webGoogleMapsApiKey:
                                                  'AIzaSyDQR3uBodyHWo9-IEs5WGI6JxiH62inkAw',
                                              onSelect: (place) async {
                                                setState(() => _model
                                                    .placePickerValue2 = place);
                                              },
                                              defaultText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'knzz4dde' /* Where to? ... */,
                                              ),
                                              icon: Icon(
                                                Icons.place,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 16.0,
                                              ),
                                              buttonOptions: FFButtonOptions(
                                                width: 300.0,
                                                height: 40.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 1.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                if (_model.placePickerValue1
                                                            .city !=
                                                        null &&
                                                    _model.placePickerValue1
                                                            .city !=
                                                        '') {
                                                  await _model
                                                      .createDriverPostPageViewController
                                                      ?.nextPage(
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                    curve: Curves.ease,
                                                  );
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Please chose a location before continue',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .warning,
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: StreamBuilder<List<DriversRecord>>(
                                      stream: queryDriversRecord(
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitDoubleBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<DriversRecord>
                                            dateListViewDriversRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final dateListViewDriversRecord =
                                            dateListViewDriversRecordList
                                                    .isNotEmpty
                                                ? dateListViewDriversRecordList
                                                    .first
                                                : null;
                                        return ListView(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 30.0),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'd07yyv0t' /* Chose a departure date  */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 20.0,
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Container(
                                                  width: 300.0,
                                                  height: 48.0,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 430.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                final _datePickedDate =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      getCurrentTimestamp,
                                                                  firstDate:
                                                                      getCurrentTimestamp,
                                                                  lastDate:
                                                                      DateTime(
                                                                          2050),
                                                                );

                                                                if (_datePickedDate !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked =
                                                                        DateTime(
                                                                      _datePickedDate
                                                                          .year,
                                                                      _datePickedDate
                                                                          .month,
                                                                      _datePickedDate
                                                                          .day,
                                                                    );
                                                                  });
                                                                }
                                                              },
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .access_time_filled,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (dateTimeFormat(
                                                                            'd/M/y',
                                                                            _model.datePicked,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ) !=
                                                                          null &&
                                                                      dateTimeFormat(
                                                                            'd/M/y',
                                                                            _model.datePicked,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ) !=
                                                                          '')
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                            'd/M/y',
                                                                            _model.datePicked,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          'datePicked',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (dateTimeFormat(
                                                                            'd/M/y',
                                                                            _model.datePicked,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ) ==
                                                                          null ||
                                                                      dateTimeFormat(
                                                                            'd/M/y',
                                                                            _model.datePicked,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ) ==
                                                                          '')
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                            'd/M/y',
                                                                            getCurrentTimestamp,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          'currentTime',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: (dateTimeFormat(
                                                              'd/M/y',
                                                              _model.datePicked,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ) ==
                                                            null ||
                                                        dateTimeFormat(
                                                              'd/M/y',
                                                              _model.datePicked,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ) ==
                                                            '')
                                                    ? null
                                                    : () async {
                                                        if (valueOrDefault<
                                                                    bool>(
                                                                currentUserDocument
                                                                    ?.isDriver,
                                                                false) ==
                                                            true) {
                                                          await DriversPostsRecord
                                                              .collection
                                                              .doc()
                                                              .set(
                                                                  createDriversPostsRecordData(
                                                                createdTime:
                                                                    getCurrentTimestamp,
                                                                postedByRef:
                                                                    currentUserReference,
                                                                vehicleType:
                                                                    dateListViewDriversRecord
                                                                        ?.vehicleType,
                                                                departureCity:
                                                                    _model
                                                                        .placePickerValue1
                                                                        .city,
                                                                departureCountry:
                                                                    _model
                                                                        .placePickerValue1
                                                                        .country,
                                                                destinationCity:
                                                                    _model
                                                                        .placePickerValue2
                                                                        .city,
                                                                destinationCountry:
                                                                    _model
                                                                        .placePickerValue2
                                                                        .country,
                                                                departureTime:
                                                                    _model
                                                                        .datePicked,
                                                                userName:
                                                                    currentUserDisplayName,
                                                                departureLatLng:
                                                                    _model
                                                                        .placePickerValue1
                                                                        .latLng,
                                                                destinationLatLng:
                                                                    _model
                                                                        .placePickerValue2
                                                                        .latLng,
                                                              ));
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      2000));
                                                          HapticFeedback
                                                              .lightImpact();

                                                          context.goNamed(
                                                              'myDriverPostsPage');

                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Success'),
                                                                content: Text(
                                                                    'your post has been published succefully'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          return;
                                                        } else {
                                                          return;
                                                        }
                                                      },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '2v4qgmdw' /* Publish */,
                                                ),
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 38.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 30.0)),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 100.0)),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.navBarModel,
                        updateCallback: () => setState(() {}),
                        child: NavBarWidget(
                          selectedPageIndex: 2,
                          hidden: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
