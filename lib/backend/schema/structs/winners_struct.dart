// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WinnersStruct extends FFFirebaseStruct {
  WinnersStruct({
    int? coins,
    int? rank,
    int? score,
    String? userId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _coins = coins,
        _rank = rank,
        _score = score,
        _userId = userId,
        super(firestoreUtilData);

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  set coins(int? val) => _coins = val;

  void incrementCoins(int amount) => coins = coins + amount;

  bool hasCoins() => _coins != null;

  // "rank" field.
  int? _rank;
  int get rank => _rank ?? 0;
  set rank(int? val) => _rank = val;

  void incrementRank(int amount) => rank = rank + amount;

  bool hasRank() => _rank != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  set score(int? val) => _score = val;

  void incrementScore(int amount) => score = score + amount;

  bool hasScore() => _score != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  static WinnersStruct fromMap(Map<String, dynamic> data) => WinnersStruct(
        coins: castToType<int>(data['coins']),
        rank: castToType<int>(data['rank']),
        score: castToType<int>(data['score']),
        userId: data['userId'] as String?,
      );

  static WinnersStruct? maybeFromMap(dynamic data) =>
      data is Map ? WinnersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'coins': _coins,
        'rank': _rank,
        'score': _score,
        'userId': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'coins': serializeParam(
          _coins,
          ParamType.int,
        ),
        'rank': serializeParam(
          _rank,
          ParamType.int,
        ),
        'score': serializeParam(
          _score,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static WinnersStruct fromSerializableMap(Map<String, dynamic> data) =>
      WinnersStruct(
        coins: deserializeParam(
          data['coins'],
          ParamType.int,
          false,
        ),
        rank: deserializeParam(
          data['rank'],
          ParamType.int,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WinnersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WinnersStruct &&
        coins == other.coins &&
        rank == other.rank &&
        score == other.score &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([coins, rank, score, userId]);
}

WinnersStruct createWinnersStruct({
  int? coins,
  int? rank,
  int? score,
  String? userId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WinnersStruct(
      coins: coins,
      rank: rank,
      score: score,
      userId: userId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WinnersStruct? updateWinnersStruct(
  WinnersStruct? winners, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    winners
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWinnersStructData(
  Map<String, dynamic> firestoreData,
  WinnersStruct? winners,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (winners == null) {
    return;
  }
  if (winners.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && winners.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final winnersData = getWinnersFirestoreData(winners, forFieldValue);
  final nestedData = winnersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = winners.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWinnersFirestoreData(
  WinnersStruct? winners, [
  bool forFieldValue = false,
]) {
  if (winners == null) {
    return {};
  }
  final firestoreData = mapToFirestore(winners.toMap());

  // Add any Firestore field values
  winners.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWinnersListFirestoreData(
  List<WinnersStruct>? winnerss,
) =>
    winnerss?.map((e) => getWinnersFirestoreData(e, true)).toList() ?? [];
