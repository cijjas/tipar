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
import '/auth/firebase_auth/auth_util.dart';

double? tipsOrPoints(UsersRecord? currentUserDocument) {
  if (currentUserDocument?.isEmployee == true) {
    return currentUserDocument?.totalTips;
  }
  return currentUserDocument?.totalPoints?.toDouble();
}

int? tipsInArgument(double? tip) {
  if (tip == null) {
    throw ArgumentError('Tip value cannot be null.');
  } else if (tip < 100) {
    return 0;
  } else if (tip >= 100 && tip < 200) {
    return 500;
  } else if (tip >= 200 && tip < 500) {
    return 1500;
  } else if (tip >= 500 && tip < 800) {
    return 3000;
  } else if (tip >= 800 && tip < 1000) {
    return 5000;
  } else if (tip >= 1000 && tip < 1500) {
    return 15000;
  } else {
    int interval = ((tip - 1500) / 500).floor();
    return (interval * 1500).floor();
  }
}
