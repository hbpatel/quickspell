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
Future<int> getPlayerRankFromDoc(
    DocumentReference scoreDocRef, String userId) async {
  try {
    // Query all entries ordered by totalScore DESC
    final querySnap = await scoreDocRef
        .collection('scores')
        .orderBy('totalScore', descending: true)
        .orderBy('updatedAt', descending: false) // tie-breaker
        .get();

    final docs = querySnap.docs;
    if (docs.isEmpty) {
      debugPrint('No documents found in leaderboard.');
      return -1;
    }

    // Find index where userId (or uid) matches targetUserId
    for (int i = 0; i < docs.length; i++) {
      final data = docs[i].data() as Map<String, dynamic>? ?? {};
      final entryUserId = (data['userID'] ?? data['uid'])?.toString() ?? '';
      if (entryUserId == userId) {
        debugPrint('Found $userId at position ${i + 1}');
        return i + 1; // 1-based rank
      }
    }

    debugPrint('User not found in leaderboard.');
    return -1;
  } catch (e, st) {
    debugPrint('getPlayerRankFromDoc error: $e\n$st');
    return -1;
  }
}
