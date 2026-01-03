import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "rank" field.
  int? _rank;
  int get rank => _rank ?? 0;
  bool hasRank() => _rank != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _amount = castToType<int>(snapshotData['amount']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _dayId = snapshotData['dayId'] as String?;
    _rank = castToType<int>(snapshotData['rank']);
    _score = castToType<int>(snapshotData['score']);
    _type = snapshotData['type'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('transactions')
          : FirebaseFirestore.instance.collectionGroup('transactions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('transactions').doc(id);

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  int? amount,
  DateTime? createdAt,
  String? dayId,
  int? rank,
  int? score,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'createdAt': createdAt,
      'dayId': dayId,
      'rank': rank,
      'score': score,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.createdAt == e2?.createdAt &&
        e1?.dayId == e2?.dayId &&
        e1?.rank == e2?.rank &&
        e1?.score == e2?.score &&
        e1?.type == e2?.type;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality()
      .hash([e?.amount, e?.createdAt, e?.dayId, e?.rank, e?.score, e?.type]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
