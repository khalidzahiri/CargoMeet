import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientPostsRecord extends FirestoreRecord {
  ClientPostsRecord._(
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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

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

  // "requested_vehicle_type" field.
  String? _requestedVehicleType;
  String get requestedVehicleType => _requestedVehicleType ?? '';
  bool hasRequestedVehicleType() => _requestedVehicleType != null;

  // "requested_vehicle_image" field.
  String? _requestedVehicleImage;
  String get requestedVehicleImage => _requestedVehicleImage ?? '';
  bool hasRequestedVehicleImage() => _requestedVehicleImage != null;

  // "price_currency" field.
  String? _priceCurrency;
  String get priceCurrency => _priceCurrency ?? '';
  bool hasPriceCurrency() => _priceCurrency != null;

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

  // "post_status" field.
  String? _postStatus;
  String get postStatus => _postStatus ?? '';
  bool hasPostStatus() => _postStatus != null;

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
    _price = castToType<double>(snapshotData['price']);
    _weight = castToType<double>(snapshotData['weight']);
    _postedByRef = snapshotData['posted_by_ref'] as DocumentReference?;
    _userImage = snapshotData['user_image'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _requestedVehicleType = snapshotData['requested_vehicle_type'] as String?;
    _requestedVehicleImage = snapshotData['requested_vehicle_image'] as String?;
    _priceCurrency = snapshotData['price_currency'] as String?;
    _departureCity = snapshotData['departure_city'] as String?;
    _departureCountry = snapshotData['departure_country'] as String?;
    _destinationCity = snapshotData['destination_city'] as String?;
    _destinationCountry = snapshotData['destination_country'] as String?;
    _departureTime = snapshotData['departure_time'] as DateTime?;
    _postStatus = snapshotData['post_status'] as String?;
    _departureLatLng = snapshotData['departure_LatLng'] as LatLng?;
    _destinationLatLng = snapshotData['destination_LatLng'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('client_posts');

  static Stream<ClientPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientPostsRecord.fromSnapshot(s));

  static Future<ClientPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientPostsRecord.fromSnapshot(s));

  static ClientPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientPostsRecord._(reference, mapFromFirestore(data));

  static ClientPostsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ClientPostsRecord.getDocumentFromData(
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
          'price': convertAlgoliaParam(
            snapshot.data['price'],
            ParamType.double,
            false,
          ),
          'weight': convertAlgoliaParam(
            snapshot.data['weight'],
            ParamType.double,
            false,
          ),
          'posted_by_ref': convertAlgoliaParam(
            snapshot.data['posted_by_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'user_image': snapshot.data['user_image'],
          'user_name': snapshot.data['user_name'],
          'requested_vehicle_type': snapshot.data['requested_vehicle_type'],
          'requested_vehicle_image': snapshot.data['requested_vehicle_image'],
          'price_currency': snapshot.data['price_currency'],
          'departure_city': snapshot.data['departure_city'],
          'departure_country': snapshot.data['departure_country'],
          'destination_city': snapshot.data['destination_city'],
          'destination_country': snapshot.data['destination_country'],
          'departure_time': convertAlgoliaParam(
            snapshot.data['departure_time'],
            ParamType.DateTime,
            false,
          ),
          'post_status': snapshot.data['post_status'],
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
        ClientPostsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ClientPostsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'client_posts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ClientPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientPostsRecordData({
  DateTime? createdTime,
  DateTime? updatedTime,
  String? postImage,
  double? price,
  double? weight,
  DocumentReference? postedByRef,
  String? userImage,
  String? userName,
  String? requestedVehicleType,
  String? requestedVehicleImage,
  String? priceCurrency,
  String? departureCity,
  String? departureCountry,
  String? destinationCity,
  String? destinationCountry,
  DateTime? departureTime,
  String? postStatus,
  LatLng? departureLatLng,
  LatLng? destinationLatLng,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'updated_time': updatedTime,
      'post_image': postImage,
      'price': price,
      'weight': weight,
      'posted_by_ref': postedByRef,
      'user_image': userImage,
      'user_name': userName,
      'requested_vehicle_type': requestedVehicleType,
      'requested_vehicle_image': requestedVehicleImage,
      'price_currency': priceCurrency,
      'departure_city': departureCity,
      'departure_country': departureCountry,
      'destination_city': destinationCity,
      'destination_country': destinationCountry,
      'departure_time': departureTime,
      'post_status': postStatus,
      'departure_LatLng': departureLatLng,
      'destination_LatLng': destinationLatLng,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientPostsRecordDocumentEquality implements Equality<ClientPostsRecord> {
  const ClientPostsRecordDocumentEquality();

  @override
  bool equals(ClientPostsRecord? e1, ClientPostsRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime &&
        e1?.postImage == e2?.postImage &&
        e1?.price == e2?.price &&
        e1?.weight == e2?.weight &&
        e1?.postedByRef == e2?.postedByRef &&
        e1?.userImage == e2?.userImage &&
        e1?.userName == e2?.userName &&
        e1?.requestedVehicleType == e2?.requestedVehicleType &&
        e1?.requestedVehicleImage == e2?.requestedVehicleImage &&
        e1?.priceCurrency == e2?.priceCurrency &&
        e1?.departureCity == e2?.departureCity &&
        e1?.departureCountry == e2?.departureCountry &&
        e1?.destinationCity == e2?.destinationCity &&
        e1?.destinationCountry == e2?.destinationCountry &&
        e1?.departureTime == e2?.departureTime &&
        e1?.postStatus == e2?.postStatus &&
        e1?.departureLatLng == e2?.departureLatLng &&
        e1?.destinationLatLng == e2?.destinationLatLng;
  }

  @override
  int hash(ClientPostsRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.updatedTime,
        e?.postImage,
        e?.price,
        e?.weight,
        e?.postedByRef,
        e?.userImage,
        e?.userName,
        e?.requestedVehicleType,
        e?.requestedVehicleImage,
        e?.priceCurrency,
        e?.departureCity,
        e?.departureCountry,
        e?.destinationCity,
        e?.destinationCountry,
        e?.departureTime,
        e?.postStatus,
        e?.departureLatLng,
        e?.destinationLatLng
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientPostsRecord;
}
