import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FriendsRecord extends FirestoreRecord {
  FriendsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "friend_id" field.
  DocumentReference? _friendId;
  DocumentReference? get friendId => _friendId;
  bool hasFriendId() => _friendId != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _friendId = snapshotData['friend_id'] as DocumentReference?;
    _name = snapshotData['Name'] as String?;
    _username = snapshotData['username'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('friends')
          : FirebaseFirestore.instance.collectionGroup('friends');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('friends').doc(id);

  static Stream<FriendsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FriendsRecord.fromSnapshot(s));

  static Future<FriendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FriendsRecord.fromSnapshot(s));

  static FriendsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FriendsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FriendsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FriendsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FriendsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FriendsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFriendsRecordData({
  DocumentReference? friendId,
  String? name,
  String? username,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'friend_id': friendId,
      'Name': name,
      'username': username,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class FriendsRecordDocumentEquality implements Equality<FriendsRecord> {
  const FriendsRecordDocumentEquality();

  @override
  bool equals(FriendsRecord? e1, FriendsRecord? e2) {
    return e1?.friendId == e2?.friendId &&
        e1?.name == e2?.name &&
        e1?.username == e2?.username &&
        e1?.status == e2?.status;
  }

  @override
  int hash(FriendsRecord? e) =>
      const ListEquality().hash([e?.friendId, e?.name, e?.username, e?.status]);

  @override
  bool isValidKey(Object? o) => o is FriendsRecord;
}
