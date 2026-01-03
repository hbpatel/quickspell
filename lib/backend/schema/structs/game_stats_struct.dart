// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GameStatsStruct extends FFFirebaseStruct {
  GameStatsStruct({
    int? wordsMadeScore,
    String? wordsMade,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _wordsMadeScore = wordsMadeScore,
        _wordsMade = wordsMade,
        super(firestoreUtilData);

  // "wordsMadeScore" field.
  int? _wordsMadeScore;
  int get wordsMadeScore => _wordsMadeScore ?? 0;
  set wordsMadeScore(int? val) => _wordsMadeScore = val;

  void incrementWordsMadeScore(int amount) =>
      wordsMadeScore = wordsMadeScore + amount;

  bool hasWordsMadeScore() => _wordsMadeScore != null;

  // "wordsMade" field.
  String? _wordsMade;
  String get wordsMade => _wordsMade ?? '';
  set wordsMade(String? val) => _wordsMade = val;

  bool hasWordsMade() => _wordsMade != null;

  static GameStatsStruct fromMap(Map<String, dynamic> data) => GameStatsStruct(
        wordsMadeScore: castToType<int>(data['wordsMadeScore']),
        wordsMade: data['wordsMade'] as String?,
      );

  static GameStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? GameStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'wordsMadeScore': _wordsMadeScore,
        'wordsMade': _wordsMade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'wordsMadeScore': serializeParam(
          _wordsMadeScore,
          ParamType.int,
        ),
        'wordsMade': serializeParam(
          _wordsMade,
          ParamType.String,
        ),
      }.withoutNulls;

  static GameStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GameStatsStruct(
        wordsMadeScore: deserializeParam(
          data['wordsMadeScore'],
          ParamType.int,
          false,
        ),
        wordsMade: deserializeParam(
          data['wordsMade'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GameStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GameStatsStruct &&
        wordsMadeScore == other.wordsMadeScore &&
        wordsMade == other.wordsMade;
  }

  @override
  int get hashCode => const ListEquality().hash([wordsMadeScore, wordsMade]);
}

GameStatsStruct createGameStatsStruct({
  int? wordsMadeScore,
  String? wordsMade,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GameStatsStruct(
      wordsMadeScore: wordsMadeScore,
      wordsMade: wordsMade,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GameStatsStruct? updateGameStatsStruct(
  GameStatsStruct? gameStats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gameStats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGameStatsStructData(
  Map<String, dynamic> firestoreData,
  GameStatsStruct? gameStats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gameStats == null) {
    return;
  }
  if (gameStats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gameStats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gameStatsData = getGameStatsFirestoreData(gameStats, forFieldValue);
  final nestedData = gameStatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gameStats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGameStatsFirestoreData(
  GameStatsStruct? gameStats, [
  bool forFieldValue = false,
]) {
  if (gameStats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gameStats.toMap());

  // Add any Firestore field values
  gameStats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGameStatsListFirestoreData(
  List<GameStatsStruct>? gameStatss,
) =>
    gameStatss?.map((e) => getGameStatsFirestoreData(e, true)).toList() ?? [];
