import 'package:intl/intl.dart';

class DateTimeUtils {
  // Date time Format
  static const dateFormatddMMyyyyDot = 'dd.MM.yyyy';

  static String dateToString(DateTime dateTime) {
    return DateFormat(dateFormatddMMyyyyDot).format(dateTime);
  }
}
