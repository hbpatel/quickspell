import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchesRecord extends FirestoreRecord {
  MatchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "player1" field.
  String? _player1;
  String get player1 => _player1 ?? '';
  bool hasPlayer1() => _player1 != null;

  // "player2" field.
  String? _player2;
  String get player2 => _player2 ?? '';
  bool hasPlayer2() => _player2 != null;

  // "player1Words" field.
  List<String>? _player1Words;
  List<String> get player1Words => _player1Words ?? const [];
  bool hasPlayer1Words() => _player1Words != null;

  // "player1Scores" field.
  List<int>? _player1Scores;
  List<int> get player1Scores => _player1Scores ?? const [];
  bool hasPlayer1Scores() => _player1Scores != null;

  // "player2Words" field.
  List<String>? _player2Words;
  List<String> get player2Words => _player2Words ?? const [];
  bool hasPlayer2Words() => _player2Words != null;

  // "player2Scores" field.
  List<int>? _player2Scores;
  List<int> get player2Scores => _player2Scores ?? const [];
  bool hasPlayer2Scores() => _player2Scores != null;

  // "matchDate" field.
  DateTime? _matchDate;
  DateTime? get matchDate => _matchDate;
  bool hasMatchDate() => _matchDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "player1Result" field.
  String? _player1Result;
  String get player1Result => _player1Result ?? '';
  bool hasPlayer1Result() => _player1Result != null;

  // "player2Result" field.
  String? _player2Result;
  String get player2Result => _player2Result ?? '';
  bool hasPlayer2Result() => _player2Result != null;

  void _initializeFields() {
    _player1 = snapshotData['player1'] as String?;
    _player2 = snapshotData['player2'] as String?;
    _player1Words = getDataList(snapshotData['player1Words']);
    _player1Scores = getDataList(snapshotData['player1Scores']);
    _player2Words = getDataList(snapshotData['player2Words']);
    _player2Scores = getDataList(snapshotData['player2Scores']);
    _matchDate = snapshotData['matchDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _player1Result = snapshotData['player1Result'] as String?;
    _player2Result = snapshotData['player2Result'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('matches');

  static Stream<MatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchesRecord.fromSnapshot(s));

  static Future<MatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchesRecord.fromSnapshot(s));

  static MatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchesRecordData({
  String? player1,
  String? player2,
  DateTime? matchDate,
  String? status,
  String? player1Result,
  String? player2Result,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'player1': player1,
      'player2': player2,
      'matchDate': matchDate,
      'status': status,
      'player1Result': player1Result,
      'player2Result': player2Result,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchesRecordDocumentEquality implements Equality<MatchesRecord> {
  const MatchesRecordDocumentEquality();

  @override
  bool equals(MatchesRecord? e1, MatchesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.player1 == e2?.player1 &&
        e1?.player2 == e2?.player2 &&
        listEquality.equals(e1?.player1Words, e2?.player1Words) &&
        listEquality.equals(e1?.player1Scores, e2?.player1Scores) &&
        listEquality.equals(e1?.player2Words, e2?.player2Words) &&
        listEquality.equals(e1?.player2Scores, e2?.player2Scores) &&
        e1?.matchDate == e2?.matchDate &&
        e1?.status == e2?.status &&
        e1?.player1Result == e2?.player1Result &&
        e1?.player2Result == e2?.player2Result;
  }

  @override
  int hash(MatchesRecord? e) => const ListEquality().hash([
        e?.player1,
        e?.player2,
        e?.player1Words,
        e?.player1Scores,
        e?.player2Words,
        e?.player2Scores,
        e?.matchDate,
        e?.status,
        e?.player1Result,
        e?.player2Result
      ]);

  @override
  bool isValidKey(Object? o) => o is MatchesRecord;
}
