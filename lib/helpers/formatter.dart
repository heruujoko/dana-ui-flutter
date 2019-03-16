import 'package:intl/intl.dart';

class Formatter {

  static String number(double num) {
    final formatter = new NumberFormat("#,###");
    return formatter.format(num);
  }

}