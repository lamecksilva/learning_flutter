import 'package:intl/intl.dart';

class DateTimeUtils {
  static int getCurrentHour() {
    final now = DateTime.now();

    return now.hour;
  }

  static String getGreeting() {
    final hour = getCurrentHour();

    if (hour > 6 && hour < 12) {
      return "Bom Dia";
    } else if (hour > 12 && hour < 18) {
      return "Boa Tarde";
    } else {
      return "Boa Noite";
    }
  }

  static String getFormattedDate({String? date}) {
    if (date.toString().isEmpty) {
      return '';
    } else if (date != null) {
      DateTime dt = DateTime.parse(date);

      return DateFormat('dd/MM/yyyy kk:mm').format(dt);
    }
    return '';
  }

  static String getPeriod() {
    return '';
  }
}
