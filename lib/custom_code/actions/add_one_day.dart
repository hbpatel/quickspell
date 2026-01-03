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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<String> addOneDay(String today) async {
  try {
    // Manually extract parts of the yyyyMMdd string to avoid format issues
    final year = int.parse(today.substring(0, 4));
    final month = int.parse(today.substring(4, 6));
    final day = int.parse(today.substring(6, 8));

    final currentDate = DateTime(year, month, day);

    // add one day
    final newDate = currentDate.add(const Duration(days: 1));

    // Format it back to yyyyMMdd
    final formatted = DateFormat('yyyyMMdd').format(newDate);

    return formatted;
  } catch (e) {
    print('Error parsing or formatting date: $e');
    return today;
  }
}
