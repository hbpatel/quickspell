import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayoutsRecord extends FirestoreRecord {
  PayoutsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "winners" field.
  List<WinnersStruct>? _winners;
  List<WinnersStruct> get winners => _winners ?? const [];
  bool hasWinners() => _winners != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _winners = getStructList(
      snapshotData['winners'],
      WinnersStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payouts');

  static Stream<PayoutsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PayoutsRecord.fromSnapshot(s));

  static Future<PayoutsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PayoutsRecord.fromSnapshot(s));

  static PayoutsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PayoutsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PayoutsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PayoutsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PayoutsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PayoutsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPayoutsRecordData({
  DateTime? createdAt,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class PayoutsRecordDocumentEquality implements Equality<PayoutsRecord> {
  const PayoutsRecordDocumentEquality();

  @override
  bool equals(PayoutsRecord? e1, PayoutsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.winners, e2?.winners);
  }

  @override
  int hash(PayoutsRecord? e) =>
      const ListEquality().hash([e?.createdAt, e?.status, e?.winners]);

  @override
  bool isValidKey(Object? o) => o is PayoutsRecord;
}
