import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriversRecord extends FirestoreRecord {
  DriversRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "driver_licence_num" field.
  String? _driverLicenceNum;
  String get driverLicenceNum => _driverLicenceNum ?? '';
  bool hasDriverLicenceNum() => _driverLicenceNum != null;

  // "num_of_trip" field.
  int? _numOfTrip;
  int get numOfTrip => _numOfTrip ?? 0;
  bool hasNumOfTrip() => _numOfTrip != null;

  // "license_plate" field.
  String? _licensePlate;
  String get licensePlate => _licensePlate ?? '';
  bool hasLicensePlate() => _licensePlate != null;

  // "driver_licence" field.
  List<String>? _driverLicence;
  List<String> get driverLicence => _driverLicence ?? const [];
  bool hasDriverLicence() => _driverLicence != null;

  // "insurance_licence" field.
  List<String>? _insuranceLicence;
  List<String> get insuranceLicence => _insuranceLicence ?? const [];
  bool hasInsuranceLicence() => _insuranceLicence != null;

  // "vehicle_brand" field.
  String? _vehicleBrand;
  String get vehicleBrand => _vehicleBrand ?? '';
  bool hasVehicleBrand() => _vehicleBrand != null;

  // "insurance_licence_name" field.
  List<String>? _insuranceLicenceName;
  List<String> get insuranceLicenceName => _insuranceLicenceName ?? const [];
  bool hasInsuranceLicenceName() => _insuranceLicenceName != null;

  // "driver_licence_name" field.
  List<String>? _driverLicenceName;
  List<String> get driverLicenceName => _driverLicenceName ?? const [];
  bool hasDriverLicenceName() => _driverLicenceName != null;

  // "license_obtention_date" field.
  DateTime? _licenseObtentionDate;
  DateTime? get licenseObtentionDate => _licenseObtentionDate;
  bool hasLicenseObtentionDate() => _licenseObtentionDate != null;

  // "license_experation_date" field.
  DateTime? _licenseExperationDate;
  DateTime? get licenseExperationDate => _licenseExperationDate;
  bool hasLicenseExperationDate() => _licenseExperationDate != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "vehicle_image" field.
  String? _vehicleImage;
  String get vehicleImage => _vehicleImage ?? '';
  bool hasVehicleImage() => _vehicleImage != null;

  // "registration_certificate" field.
  List<String>? _registrationCertificate;
  List<String> get registrationCertificate =>
      _registrationCertificate ?? const [];
  bool hasRegistrationCertificate() => _registrationCertificate != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _driverLicenceNum = snapshotData['driver_licence_num'] as String?;
    _numOfTrip = castToType<int>(snapshotData['num_of_trip']);
    _licensePlate = snapshotData['license_plate'] as String?;
    _driverLicence = getDataList(snapshotData['driver_licence']);
    _insuranceLicence = getDataList(snapshotData['insurance_licence']);
    _vehicleBrand = snapshotData['vehicle_brand'] as String?;
    _insuranceLicenceName = getDataList(snapshotData['insurance_licence_name']);
    _driverLicenceName = getDataList(snapshotData['driver_licence_name']);
    _licenseObtentionDate = snapshotData['license_obtention_date'] as DateTime?;
    _licenseExperationDate =
        snapshotData['license_experation_date'] as DateTime?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _vehicleImage = snapshotData['vehicle_image'] as String?;
    _registrationCertificate =
        getDataList(snapshotData['registration_certificate']);
    _uid = snapshotData['uid'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('drivers')
          : FirebaseFirestore.instance.collectionGroup('drivers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('drivers').doc(id);

  static Stream<DriversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriversRecord.fromSnapshot(s));

  static Future<DriversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DriversRecord.fromSnapshot(s));

  static DriversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DriversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DriversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriversRecordData({
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? driverLicenceNum,
  int? numOfTrip,
  String? licensePlate,
  String? vehicleBrand,
  DateTime? licenseObtentionDate,
  DateTime? licenseExperationDate,
  String? vehicleType,
  String? vehicleImage,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'driver_licence_num': driverLicenceNum,
      'num_of_trip': numOfTrip,
      'license_plate': licensePlate,
      'vehicle_brand': vehicleBrand,
      'license_obtention_date': licenseObtentionDate,
      'license_experation_date': licenseExperationDate,
      'vehicle_type': vehicleType,
      'vehicle_image': vehicleImage,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class DriversRecordDocumentEquality implements Equality<DriversRecord> {
  const DriversRecordDocumentEquality();

  @override
  bool equals(DriversRecord? e1, DriversRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.driverLicenceNum == e2?.driverLicenceNum &&
        e1?.numOfTrip == e2?.numOfTrip &&
        e1?.licensePlate == e2?.licensePlate &&
        listEquality.equals(e1?.driverLicence, e2?.driverLicence) &&
        listEquality.equals(e1?.insuranceLicence, e2?.insuranceLicence) &&
        e1?.vehicleBrand == e2?.vehicleBrand &&
        listEquality.equals(
            e1?.insuranceLicenceName, e2?.insuranceLicenceName) &&
        listEquality.equals(e1?.driverLicenceName, e2?.driverLicenceName) &&
        e1?.licenseObtentionDate == e2?.licenseObtentionDate &&
        e1?.licenseExperationDate == e2?.licenseExperationDate &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.vehicleImage == e2?.vehicleImage &&
        listEquality.equals(
            e1?.registrationCertificate, e2?.registrationCertificate) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(DriversRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.driverLicenceNum,
        e?.numOfTrip,
        e?.licensePlate,
        e?.driverLicence,
        e?.insuranceLicence,
        e?.vehicleBrand,
        e?.insuranceLicenceName,
        e?.driverLicenceName,
        e?.licenseObtentionDate,
        e?.licenseExperationDate,
        e?.vehicleType,
        e?.vehicleImage,
        e?.registrationCertificate,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is DriversRecord;
}
