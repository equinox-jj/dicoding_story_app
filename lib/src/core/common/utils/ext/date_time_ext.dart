import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formatTime() {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('hh:mm a');
    final DateTime displayDate = displayFormater.parse(toLocal().toString());
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  String formatDate() {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('dd MMM yyyy');
    final DateTime displayDate = displayFormater.parse(toLocal().toString());
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  String formatDateAndTime() {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('dd MMM yyyy, hh:mm a');
    final DateTime displayDate = displayFormater.parse(toLocal().toString());
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }
}
