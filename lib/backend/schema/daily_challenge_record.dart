import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyChallengeRecord extends FirestoreRecord {
  DailyChallengeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "random" field.
  String? _random;
  String get random => _random ?? '';
  bool hasRandom() => _random != null;

  void _initializeFields() {
    _random = snapshotData['random'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dailyChallenge');

  static Stream<DailyChallengeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyChallengeRecord.fromSnapshot(s));

  static Future<DailyChallengeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyChallengeRecord.fromSnapshot(s));

  static DailyChallengeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyChallengeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyChallengeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyChallengeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyChallengeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyChallengeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyChallengeRecordData({
  String? random,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'random': random,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyChallengeRecordDocumentEquality
    implements Equality<DailyChallengeRecord> {
  const DailyChallengeRecordDocumentEquality();

  @override
  bool equals(DailyChallengeRecord? e1, DailyChallengeRecord? e2) {
    return e1?.random == e2?.random;
  }

  @override
  int hash(DailyChallengeRecord? e) => const ListEquality().hash([e?.random]);

  @override
  bool isValidKey(Object? o) => o is DailyChallengeRecord;
}
