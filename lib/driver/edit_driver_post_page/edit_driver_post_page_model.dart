import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'edit_driver_post_page_widget.dart' show EditDriverPostPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditDriverPostPageModel
    extends FlutterFlowModel<EditDriverPostPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EditDriverPostPageView widget.
  PageController? editDriverPostPageViewController;

  int get editDriverPostPageViewCurrentIndex =>
      editDriverPostPageViewController != null &&
              editDriverPostPageViewController!.hasClients &&
              editDriverPostPageViewController!.page != null
          ? editDriverPostPageViewController!.page!.round()
          : 0;
  // State field(s) for PlacePicker widget.
  var placePickerValue1 = FFPlace();
  // State field(s) for PlacePicker widget.
  var placePickerValue2 = FFPlace();
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
