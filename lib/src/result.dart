import 'package:zxcvbn/src/feedback.dart';

class Result {
  String password;
  int guesses;
  double guesses_log10;
  dynamic sequence;
  Feedback feedback;
  double score;

  Map<String, double> crack_times_seconds;
  Map<String, String> crack_times_display;

  void operator []=(String key, value) {
    switch (key) {
      case 'crack_times_display':
        crack_times_display = value;
        break;
      case 'crack_times_seconds':
        crack_times_seconds = value;
        break;
      case 'score':
        score = value;
        break;
      default:
        throw Exception('Property $key not supported');
    }
  }

  dynamic operator [](String arg) {
    switch (arg) {
      default:
        throw Exception('Property $arg not supported');
    }
  }
}
