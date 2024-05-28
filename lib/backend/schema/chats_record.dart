import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "user_a" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "laste_message_time" field.
  DateTime? _lasteMessageTime;
  DateTime? get lasteMessageTime => _lasteMessageTime;
  bool hasLasteMessageTime() => _lasteMessageTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "message_seen" field.
  bool? _messageSeen;
  bool get messageSeen => _messageSeen ?? false;
  bool hasMessageSeen() => _messageSeen != null;

  void _initializeFields() {
    _users = snapshotData['users'] as DocumentReference?;
    _userA = snapshotData['user_a'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lasteMessageTime = snapshotData['laste_message_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _messageSeen = snapshotData['message_seen'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  static ChatsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ChatsRecord.getDocumentFromData(
        {
          'users': convertAlgoliaParam(
            snapshot.data['users'],
            ParamType.DocumentReference,
            false,
          ),
          'user_a': convertAlgoliaParam(
            snapshot.data['user_a'],
            ParamType.DocumentReference,
            false,
          ),
          'user_b': convertAlgoliaParam(
            snapshot.data['user_b'],
            ParamType.DocumentReference,
            false,
          ),
          'last_message': snapshot.data['last_message'],
          'laste_message_time': convertAlgoliaParam(
            snapshot.data['laste_message_time'],
            ParamType.DateTime,
            false,
          ),
          'image': snapshot.data['image'],
          'message_seen': snapshot.data['message_seen'],
        },
        ChatsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ChatsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'chats',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? users,
  DocumentReference? userA,
  DocumentReference? userB,
  String? lastMessage,
  DateTime? lasteMessageTime,
  String? image,
  bool? messageSeen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users': users,
      'user_a': userA,
      'user_b': userB,
      'last_message': lastMessage,
      'laste_message_time': lasteMessageTime,
      'image': image,
      'message_seen': messageSeen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.users == e2?.users &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lasteMessageTime == e2?.lasteMessageTime &&
        e1?.image == e2?.image &&
        e1?.messageSeen == e2?.messageSeen;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.users,
        e?.userA,
        e?.userB,
        e?.lastMessage,
        e?.lasteMessageTime,
        e?.image,
        e?.messageSeen
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
