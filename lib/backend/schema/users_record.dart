import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "is_driver" field.
  bool? _isDriver;
  bool get isDriver => _isDriver ?? false;
  bool hasIsDriver() => _isDriver != null;

  // "is_client" field.
  bool? _isClient;
  bool get isClient => _isClient ?? false;
  bool hasIsClient() => _isClient != null;

  // "is_banned" field.
  bool? _isBanned;
  bool get isBanned => _isBanned ?? false;
  bool hasIsBanned() => _isBanned != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "user_status" field.
  String? _userStatus;
  String get userStatus => _userStatus ?? '';
  bool hasUserStatus() => _userStatus != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  bool hasSexe() => _sexe != null;

  // "user_number" field.
  int? _userNumber;
  int get userNumber => _userNumber ?? 0;
  bool hasUserNumber() => _userNumber != null;

  // "is_profile_complet" field.
  bool? _isProfileComplet;
  bool get isProfileComplet => _isProfileComplet ?? false;
  bool hasIsProfileComplet() => _isProfileComplet != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _adress = snapshotData['adress'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _isAdmin = snapshotData['is_admin'] as bool?;
    _isDriver = snapshotData['is_driver'] as bool?;
    _isClient = snapshotData['is_client'] as bool?;
    _isBanned = snapshotData['is_banned'] as bool?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _userStatus = snapshotData['user_status'] as String?;
    _sexe = snapshotData['sexe'] as String?;
    _userNumber = castToType<int>(snapshotData['user_number']);
    _isProfileComplet = snapshotData['is_profile_complet'] as bool?;
    _isVerified = snapshotData['is_verified'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'email': snapshot.data['email'],
          'display_name': snapshot.data['display_name'],
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'phone_number': snapshot.data['phone_number'],
          'uid': snapshot.data['uid'],
          'adress': snapshot.data['adress'],
          'first_name': snapshot.data['first_name'],
          'last_name': snapshot.data['last_name'],
          'is_admin': snapshot.data['is_admin'],
          'is_driver': snapshot.data['is_driver'],
          'is_client': snapshot.data['is_client'],
          'is_banned': snapshot.data['is_banned'],
          'photo_url': snapshot.data['photo_url'],
          'user_status': snapshot.data['user_status'],
          'sexe': snapshot.data['sexe'],
          'user_number': convertAlgoliaParam(
            snapshot.data['user_number'],
            ParamType.int,
            false,
          ),
          'is_profile_complet': snapshot.data['is_profile_complet'],
          'is_verified': snapshot.data['is_verified'],
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  String? uid,
  String? adress,
  String? firstName,
  String? lastName,
  bool? isAdmin,
  bool? isDriver,
  bool? isClient,
  bool? isBanned,
  String? photoUrl,
  String? userStatus,
  String? sexe,
  int? userNumber,
  bool? isProfileComplet,
  bool? isVerified,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'adress': adress,
      'first_name': firstName,
      'last_name': lastName,
      'is_admin': isAdmin,
      'is_driver': isDriver,
      'is_client': isClient,
      'is_banned': isBanned,
      'photo_url': photoUrl,
      'user_status': userStatus,
      'sexe': sexe,
      'user_number': userNumber,
      'is_profile_complet': isProfileComplet,
      'is_verified': isVerified,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.adress == e2?.adress &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isDriver == e2?.isDriver &&
        e1?.isClient == e2?.isClient &&
        e1?.isBanned == e2?.isBanned &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.userStatus == e2?.userStatus &&
        e1?.sexe == e2?.sexe &&
        e1?.userNumber == e2?.userNumber &&
        e1?.isProfileComplet == e2?.isProfileComplet &&
        e1?.isVerified == e2?.isVerified;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.adress,
        e?.firstName,
        e?.lastName,
        e?.isAdmin,
        e?.isDriver,
        e?.isClient,
        e?.isBanned,
        e?.photoUrl,
        e?.userStatus,
        e?.sexe,
        e?.userNumber,
        e?.isProfileComplet,
        e?.isVerified
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
