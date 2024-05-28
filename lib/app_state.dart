import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _frigorifique = false;
  bool get frigorifique => _frigorifique;
  set frigorifique(bool _value) {
    _frigorifique = _value;
  }

  bool _tautliner = false;
  bool get tautliner => _tautliner;
  set tautliner(bool _value) {
    _tautliner = _value;
  }

  bool _bache = false;
  bool get bache => _bache;
  set bache(bool _value) {
    _bache = _value;
  }

  bool _potchare = false;
  bool get potchare => _potchare;
  set potchare(bool _value) {
    _potchare = _value;
  }

  bool _porteur = false;
  bool get porteur => _porteur;
  set porteur(bool _value) {
    _porteur = _value;
  }

  bool _plateau = false;
  bool get plateau => _plateau;
  set plateau(bool _value) {
    _plateau = _value;
  }

  String _vehicleType = '';
  String get vehicleType => _vehicleType;
  set vehicleType(String _value) {
    _vehicleType = _value;
  }

  bool _emailState = false;
  bool get emailState => _emailState;
  set emailState(bool _value) {
    _emailState = _value;
  }

  bool _passewordState = false;
  bool get passewordState => _passewordState;
  set passewordState(bool _value) {
    _passewordState = _value;
  }
}
