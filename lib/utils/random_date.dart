import 'dart:math';

import 'package:intl/intl.dart';

String randomDate({DateTime? startDate, DateTime? endDate}) {
  final random = Random();
  startDate ??= DateTime(2000, 1, 1);
  endDate ??= DateTime.now();
  final days = endDate.difference(startDate).inDays;
  final finalDate = startDate.add(Duration(days: random.nextInt(days)));
  return DateFormat("MMMM yyyy").format(finalDate);
}
