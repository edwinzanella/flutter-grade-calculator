import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String gradeCalculator(int? gradeReceived) {
  // determine the letter grade based on the score using the following scale: F = 0 - 59, D = 60 - 69, C = 70 - 79, B = 80 - 89, A = 90 - 100
  if (gradeReceived == null) {
    return 'Enter a number';
  }

  if (gradeReceived >= 90 && gradeReceived <= 100) {
    return 'A';
  } else if (gradeReceived >= 80 && gradeReceived <= 89) {
    return 'B';
  } else if (gradeReceived >= 70 && gradeReceived <= 79) {
    return 'C';
  } else if (gradeReceived >= 60 && gradeReceived <= 69) {
    return 'D';
  } else if (gradeReceived >= 0 && gradeReceived <= 59) {
    return 'F';
  }

  return 'Enter a valid input (0 - 100)';
}
