import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriversPostsRecord extends FirestoreRecord {
  DriversPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  // "post_image" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "posted_by_ref" field.
  DocumentReference? _postedByRef;
  DocumentReference? get postedByRef => _postedByRef;
  bool hasPostedByRef() => _postedByRef != null;

  // "user_image" field.
  String? _userImage;
  String get userImage => _userImage ?? '';
  bool hasUserImage() => _userImage != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "departure_city" field.
  String? _departureCity;
  String get departureCity => _departureCity ?? '';
  bool hasDepartureCity() => _departureCity != null;

  // "departure_country" field.
  String? _departureCountry;
  String get departureCountry => _departureCountry ?? '';
  bool hasDepartureCountry() => _departureCountry != null;

  // "destination_city" field.
  String? _destinationCity;
  String get destinationCity => _destinationCity ?? '';
  bool hasDestinationCity() => _destinationCity != null;

  // "destination_country" field.
  String? _destinationCountry;
  String get destinationCountry => _destinationCountry ?? '';
  bool hasDestinationCountry() => _destinationCountry != null;

  // "departure_time" field.
  DateTime? _departureTime;
  DateTime? get departureTime => _departureTime;
  bool hasDepartureTime() => _departureTime != null;

  // "departure_LatLng" field.
  LatLng? _departureLatLng;
  LatLng? get departureLatLng => _departureLatLng;
  bool hasDepartureLatLng() => _departureLatLng != null;

  // "destination_LatLng" field.
  LatLng? _destinationLatLng;
  LatLng? get destinationLatLng => _destinationLatLng;
  bool hasDestinationLatLng() => _destinationLatLng != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
    _postImage = snapshotData['post_image'] as String?;
    _postedByRef = snapshotData['posted_by_ref'] as DocumentReference?;
    _userImage = snapshotData['user_image'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _departureCity = snapshotData['departure_city'] as String?;
    _departureCountry = snapshotData['departure_country'] as String?;
    _destinationCity = snapshotData['destination_city'] as String?;
    _destinationCountry = snapshotData['destination_country'] as String?;
    _departureTime = snapshotData['departure_time'] as DateTime?;
    _departureLatLng = snapshotData['departure_LatLng'] as LatLng?;
    _destinationLatLng = snapshotData['destination_LatLng'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drivers_posts');

  static Stream<DriversPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriversPostsRecord.fromSnapshot(s));

  static Future<DriversPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DriversPostsRecord.fromSnapshot(s));

  static DriversPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DriversPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriversPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriversPostsRecord._(reference, mapFromFirestore(data));

  static DriversPostsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      DriversPostsRecord.getDocumentFromData(
        {
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'updated_time': convertAlgoliaParam(
            snapshot.data['updated_time'],
            ParamType.DateTime,
            false,
          ),
          'post_image': snapshot.data['post_image'],
          'posted_by_ref': convertAlgoliaParam(
            snapshot.data['posted_by_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'user_image': snapshot.data['user_image'],
          'user_name': snapshot.data['user_name'],
          'vehicle_type': snapshot.data['vehicle_type'],
          'departure_city': snapshot.data['departure_city'],
          'departure_country': snapshot.data['departure_country'],
          'destination_city': snapshot.data['destination_city'],
          'destination_country': snapshot.data['destination_country'],
          'departure_time': convertAlgoliaParam(
            snapshot.data['departure_time'],
            ParamType.DateTime,
            false,
          ),
          'departure_LatLng': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
          'destination_LatLng': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
        },
        DriversPostsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<DriversPostsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'drivers_posts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'DriversPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriversPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriversPostsRecordData({
  DateTime? createdTime,
  DateTime? updatedTime,
  String? postImage,
  DocumentReference? postedByRef,
  String? userImage,
  String? userName,
  String? vehicleType,
  String? departureCity,
  String? departureCountry,
  String? destinationCity,
  String? destinationCountry,
  DateTime? departureTime,
  LatLng? departureLatLng,
  LatLng? destinationLatLng,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'updated_time': updatedTime,
      'post_image': postImage,
      'posted_by_ref': postedByRef,
      'user_image': userImage,
      'user_name': userName,
      'vehicle_type': vehicleType,
      'departure_city': departureCity,
      'departure_country': departureCountry,
      'destination_city': destinationCity,
      'destination_country': destinationCountry,
      'departure_time': departureTime,
      'departure_LatLng': departureLatLng,
      'destination_LatLng': destinationLatLng,
    }.withoutNulls,
  );

  return firestoreData;
}

class DriversPostsRecordDocumentEquality
    implements Equality<DriversPostsRecord> {
  const DriversPostsRecordDocumentEquality();

  @override
  bool equals(DriversPostsRecord? e1, DriversPostsRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime &&
        e1?.postImage == e2?.postImage &&
        e1?.postedByRef == e2?.postedByRef &&
        e1?.userImage == e2?.userImage &&
        e1?.userName == e2?.userName &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.departureCity == e2?.departureCity &&
        e1?.departureCountry == e2?.departureCountry &&
        e1?.destinationCity == e2?.destinationCity &&
        e1?.destinationCountry == e2?.destinationCountry &&
        e1?.departureTime == e2?.departureTime &&
        e1?.departureLatLng == e2?.departureLatLng &&
        e1?.destinationLatLng == e2?.destinationLatLng;
  }

  @override
  int hash(DriversPostsRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.updatedTime,
        e?.postImage,
        e?.postedByRef,
        e?.userImage,
        e?.userName,
        e?.vehicleType,
        e?.departureCity,
        e?.departureCountry,
        e?.destinationCity,
        e?.destinationCountry,
        e?.departureTime,
        e?.departureLatLng,
        e?.destinationLatLng
      ]);

  @override
  bool isValidKey(Object? o) => o is DriversPostsRecord;
}
