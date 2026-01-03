import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'daily_challenge_widget.dart' show DailyChallengeWidget;
import 'package:flutter/material.dart';

class DailyChallengeModel extends FlutterFlowModel<DailyChallengeWidget> {
  ///  Local state fields for this page.

  String? currentDate = '20250926';

  DocumentReference? scoresDocRef;

  int position = -1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getUtcTodayId] action in dailyChallenge widget.
  String? todaysDateUTC;
  // Stores action output result for [Custom Action - getDoc] action in dailyChallenge widget.
  DocumentReference? scoreDocRef;
  // Stores action output result for [Custom Action - getPlayerRankFromDoc] action in dailyChallenge widget.
  int? positionOut;
  // Stores action output result for [Custom Action - subtractOneDay] action in Icon widget.
  String? oldDate;
  // Stores action output result for [Custom Action - getDoc] action in Icon widget.
  DocumentReference? scoreDocRef2;
  // Stores action output result for [Custom Action - getPlayerRankFromDoc] action in Icon widget.
  int? positionOut2;
  // Stores action output result for [Custom Action - addOneDay] action in Icon widget.
  String? addOneDay;
  // Stores action output result for [Custom Action - getDoc] action in Icon widget.
  DocumentReference? scoreDocRef3;
  // Stores action output result for [Custom Action - getPlayerRankFromDoc] action in Icon widget.
  int? positionOut3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
