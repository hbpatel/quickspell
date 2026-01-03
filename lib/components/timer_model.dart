import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_widget.dart' show TimerWidget;
import 'package:flutter/material.dart';

class TimerModel extends FlutterFlowModel<TimerWidget> {
  ///  Local state fields for this component.

  bool timerRunning = false;

  int? timerNum = 120000;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 120000;
  int timerMilliseconds = 120000;
  String timerValue = StopWatchTimer.getDisplayTime(
    120000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - coinCalculation] action in Timer widget.
  int? coins;
  // Stores action output result for [Custom Action - highestWordScoreCalc] action in Timer widget.
  int? highestWordScore;
  // Stores action output result for [Custom Action - getUtcTodayId] action in Timer widget.
  String? todaysDateUTC;
  // Stores action output result for [Backend Call - Create Document] action in Timer widget.
  DailyChallengeRecord? todaysDocument;
  // Stores action output result for [Backend Call - Create Document] action in Timer widget.
  ScoresRecord? usersScore;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
