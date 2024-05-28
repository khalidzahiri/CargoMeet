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
import 'create_driver_post_page_widget.dart' show CreateDriverPostPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateDriverPostPageModel
    extends FlutterFlowModel<CreateDriverPostPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CreateDriverPostPageView widget.
  PageController? createDriverPostPageViewController;

  int get createDriverPostPageViewCurrentIndex =>
      createDriverPostPageViewController != null &&
              createDriverPostPageViewController!.hasClients &&
              createDriverPostPageViewController!.page != null
          ? createDriverPostPageViewController!.page!.round()
          : 0;
  // State field(s) for PlacePicker widget.
  var placePickerValue1 = FFPlace();
  // State field(s) for PlacePicker widget.
  var placePickerValue2 = FFPlace();
  DateTime? datePicked;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
  }
}
