import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'create_shipper_post_page_widget.dart' show CreateShipperPostPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateShipperPostPageModel
    extends FlutterFlowModel<CreateShipperPostPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for createPostPageView widget.
  PageController? createPostPageViewController;

  int get createPostPageViewCurrentIndex =>
      createPostPageViewController != null &&
              createPostPageViewController!.hasClients &&
              createPostPageViewController!.page != null
          ? createPostPageViewController!.page!.round()
          : 0;
  // State field(s) for Departure widget.
  var departureValue = FFPlace();
  // State field(s) for Destination widget.
  var destinationValue = FFPlace();
  // State field(s) for VehicleType widget.
  FormFieldController<List<String>>? vehicleTypeValueController;
  String? get vehicleTypeValue =>
      vehicleTypeValueController?.value?.firstOrNull;
  set vehicleTypeValue(String? val) =>
      vehicleTypeValueController?.value = val != null ? [val] : [];
  // State field(s) for Weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for Currency widget.
  String? currencyValue;
  FormFieldController<String>? currencyValueController;
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
    weightFocusNode?.dispose();
    weightTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    navBarModel.dispose();
  }
}
