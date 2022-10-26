import 'package:charge_point_app/services/grpc/generated/google/protobuf/timestamp.pb.dart';
import 'package:intl/intl.dart';

class DateTimeFormatter {
  
  static String formatDate(Timestamp timestamp) {
    DateFormat formatter = DateFormat('dd-MM-yyyy');
    var dateTime = DateTime.fromMicrosecondsSinceEpoch(timestamp.seconds.toInt() * 1000);
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  }
  
  static String formatTime(Timestamp timestamp) {
    DateFormat formatter = DateFormat('hh:mm');
    var dateTime = DateTime.fromMicrosecondsSinceEpoch(timestamp.seconds.toInt() * 1000);
    String formattedTime = formatter.format(dateTime);
    return formattedTime;
  }
}