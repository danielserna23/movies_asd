import 'package:intl/intl.dart';

class DateFormattrer {
  static String date(DateTime dateTime) {
    final dateFormatter = DateFormat.yMMMd().format(dateTime);

    return dateFormatter;
  }
}
