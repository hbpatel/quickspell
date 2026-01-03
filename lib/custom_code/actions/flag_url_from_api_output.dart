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
Future<String> flagUrlFromApiOutput(
  String countriesJson, // raw response text from API step
  String countryName, // dropdown label
) async {
  if (countriesJson.isEmpty || countryName.trim().isEmpty) return '';

  dynamic decoded;
  try {
    decoded = jsonDecode(countriesJson);
  } catch (_) {
    return '';
  }
  if (decoded is! List) return '';

  final target = countryName.trim().toLowerCase();

  // Exact match first
  for (final item in decoded) {
    final name =
        (item['name']?['common'] ?? '').toString().trim().toLowerCase();
    if (name == target) {
      final png = (item['flags']?['png'] ?? '').toString();
      if (png.isNotEmpty) return png;
    }
  }
  // Loose match fallback
  for (final item in decoded) {
    final name =
        (item['name']?['common'] ?? '').toString().trim().toLowerCase();
    if (name.contains(target) || target.contains(name)) {
      final png = (item['flags']?['png'] ?? '').toString();
      if (png.isNotEmpty) return png;
    }
  }
  return '';
}
