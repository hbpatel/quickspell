import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScoresRecord extends FirestoreRecord {
  ScoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "totalScore" field.
  int? _totalScore;
  int get totalScore => _totalScore ?? 0;
  bool hasTotalScore() => _totalScore != null;

  // "userDocRef" field.
  DocumentReference? _userDocRef;
  DocumentReference? get userDocRef => _userDocRef;
  bool hasUserDocRef() => _userDocRef != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _totalScore = castToType<int>(snapshotData['totalScore']);
    _userDocRef = snapshotData['userDocRef'] as DocumentReference?;
    _userID = snapshotData['userID'] as String?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('scores')
          : FirebaseFirestore.instance.collectionGroup('scores');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('scores').doc(id);

  static Stream<ScoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScoresRecord.fromSnapshot(s));

  static Future<ScoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScoresRecord.fromSnapshot(s));

  static ScoresRecord fromSnapshot(DocumentSnapshot snapshot) => ScoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScoresRecordData({
  int? totalScore,
  DocumentReference? userDocRef,
  String? userID,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'totalScore': totalScore,
      'userDocRef': userDocRef,
      'userID': userID,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScoresRecordDocumentEquality implements Equality<ScoresRecord> {
  const ScoresRecordDocumentEquality();

  @override
  bool equals(ScoresRecord? e1, ScoresRecord? e2) {
    return e1?.totalScore == e2?.totalScore &&
        e1?.userDocRef == e2?.userDocRef &&
        e1?.userID == e2?.userID &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(ScoresRecord? e) => const ListEquality()
      .hash([e?.totalScore, e?.userDocRef, e?.userID, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is ScoresRecord;
}
