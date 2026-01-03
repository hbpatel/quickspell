import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'timer_model.dart';
export 'timer_model.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late TimerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 100,
        ),
      );
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On component dispose action.
    () async {
      _model.timerController.onResetTimer();
    }();

    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 210.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: CircularPercentIndicator(
              percent: functions.progressBarValue(
                  _model.timerNum, _model.timerMilliseconds)!,
              radius: 87.5,
              lineWidth: 40.0,
              animation: true,
              animateFromLastPercent: true,
              progressColor: FlutterFlowTheme.of(context).error,
              backgroundColor: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          FlutterFlowTimer(
            initialTime: _model.timerInitialTimeMs,
            getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
              value,
              hours: false,
              milliSecond: false,
            ),
            controller: _model.timerController,
            updateStateInterval: Duration(milliseconds: 100),
            onChanged: (value, displayTime, shouldUpdate) {
              _model.timerMilliseconds = value;
              _model.timerValue = displayTime;
              if (shouldUpdate) safeSetState(() {});
            },
            onEnded: () async {
              if (FFAppState().gameStats.isNotEmpty) {
                _model.coins = await actions.coinCalculation();
                FFAppState().coinsCurrentGame = _model.coins!;
                safeSetState(() {});
                _model.highestWordScore = await actions.highestWordScoreCalc();
                if (_model.highestWordScore! >
                    valueOrDefault(currentUserDocument?.highestWordScore, 0)) {
                  FFAppState().highestWordScore = _model.highestWordScore!;
                  safeSetState(() {});
                } else {
                  FFAppState().highestWordScore =
                      valueOrDefault(currentUserDocument?.highestWordScore, 0);
                  safeSetState(() {});
                }

                await currentUserReference!.update({
                  ...createUsersRecordData(
                    highestWordScore: FFAppState().highestWordScore,
                  ),
                  ...mapToFirestore(
                    {
                      'pointsScored':
                          FieldValue.increment(FFAppState().totalScore),
                      'gamesPlayed': FieldValue.increment(1),
                      'wordsMade':
                          FieldValue.increment(FFAppState().gameStats.length),
                      'coins': FieldValue.increment(_model.coins!),
                    },
                  ),
                });
                if (FFAppState().gameMode == 'Solo') {
                  await TransactionsRecord.createDoc(currentUserReference!)
                      .set(createTransactionsRecordData(
                    amount: _model.coins,
                    createdAt: getCurrentTimestamp,
                    dayId: dateTimeFormat("yyyyMMdd", getCurrentTimestamp),
                    score: FFAppState().totalScore,
                    type: 'Solo Game',
                  ));

                  context.goNamed(GameSummaryWidget.routeName);
                } else {
                  if (FFAppState().gameMode == 'DC') {
                    _model.todaysDateUTC = await actions.getUtcTodayId();

                    var dailyChallengeRecordReference = DailyChallengeRecord
                        .collection
                        .doc(_model.todaysDateUTC!);
                    await dailyChallengeRecordReference
                        .set(createDailyChallengeRecordData());
                    _model.todaysDocument =
                        DailyChallengeRecord.getDocumentFromData(
                            createDailyChallengeRecordData(),
                            dailyChallengeRecordReference);

                    var scoresRecordReference = ScoresRecord.createDoc(
                      _model.todaysDocument!.reference,
                      id: currentUserUid,
                    );
                    await scoresRecordReference.set(createScoresRecordData());
                    _model.usersScore = ScoresRecord.getDocumentFromData(
                        createScoresRecordData(), scoresRecordReference);
                    if (_model.usersScore!.totalScore <=
                        FFAppState().totalScore) {
                      await _model.usersScore!.reference
                          .update(createScoresRecordData(
                        totalScore: FFAppState().totalScore,
                        userDocRef: currentUserReference,
                        userID: currentUserUid,
                        updatedAt: getCurrentTimestamp,
                      ));
                    } else {
                      await _model.usersScore!.reference
                          .update(createScoresRecordData(
                        totalScore: FFAppState().totalScore,
                        updatedAt: getCurrentTimestamp,
                      ));
                    }

                    context.goNamed(GameSummaryDCWidget.routeName);
                  }
                }
              } else {
                context.goNamed(HomePageWidget.routeName);
              }

              safeSetState(() {});
            },
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.openSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
        ],
      ),
    );
  }
}
