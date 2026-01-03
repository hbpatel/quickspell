// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<int?> highestWordScoreCalc() async {
  final stats = FFAppState().gameStats; // List<GameStatsStruct>
  if (stats.isEmpty) return null;

  // If wordsMadeScore is an int? on each GameStatsStruct:
  final scores = stats.map((s) => s.wordsMadeScore).whereType<int>();
  if (scores.isEmpty) return null;

  return scores.reduce(math.max);
}
