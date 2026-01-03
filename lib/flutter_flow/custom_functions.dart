import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? progressBarValue(
  int? totalValue,
  int? progressValue,
) {
// MODIFY CODE ONLY BELOW THIS LINE

  // Take in the totalValue and divide by the progress value and return as a double between 0 & 1
  if (totalValue == null || progressValue == null || progressValue == 0) {
    return 1;
  }

  return 1 - (progressValue / totalValue);
}
