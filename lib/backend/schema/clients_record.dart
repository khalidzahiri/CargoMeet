import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientsRecord extends FirestoreRecord {
  ClientsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "company_created_date" field.
  DateTime? _companyCreatedDate;
  DateTime? get companyCreatedDate => _companyCreatedDate;
  bool hasCompanyCreatedDate() => _companyCreatedDate != null;

  // "siret_number" field.
  int? _siretNumber;
  int get siretNumber => _siretNumber ?? 0;
  bool hasSiretNumber() => _siretNumber != null;

  // "siren_number" field.
  int? _sirenNumber;
  int get sirenNumber => _sirenNumber ?? 0;
  bool hasSirenNumber() => _sirenNumber != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _adress = snapshotData['adress'] as String?;
    _companyCreatedDate = snapshotData['company_created_date'] as DateTime?;
    _siretNumber = castToType<int>(snapshotData['siret_number']);
    _sirenNumber = castToType<int>(snapshotData['siren_number']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('clients')
          : FirebaseFirestore.instance.collectionGroup('clients');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('clients').doc(id);

  static Stream<ClientsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientsRecord.fromSnapshot(s));

  static Future<ClientsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientsRecord.fromSnapshot(s));

  static ClientsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientsRecordData({
  String? displayName,
  String? uid,
  DateTime? createdTime,
  DateTime? editedTime,
  String? bio,
  String? companyName,
  String? adress,
  DateTime? companyCreatedDate,
  int? siretNumber,
  int? sirenNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'edited_time': editedTime,
      'bio': bio,
      'company_name': companyName,
      'adress': adress,
      'company_created_date': companyCreatedDate,
      'siret_number': siretNumber,
      'siren_number': sirenNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientsRecordDocumentEquality implements Equality<ClientsRecord> {
  const ClientsRecordDocumentEquality();

  @override
  bool equals(ClientsRecord? e1, ClientsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.companyName == e2?.companyName &&
        e1?.adress == e2?.adress &&
        e1?.companyCreatedDate == e2?.companyCreatedDate &&
        e1?.siretNumber == e2?.siretNumber &&
        e1?.sirenNumber == e2?.sirenNumber;
  }

  @override
  int hash(ClientsRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.editedTime,
        e?.bio,
        e?.companyName,
        e?.adress,
        e?.companyCreatedDate,
        e?.siretNumber,
        e?.sirenNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientsRecord;
}
