import 'package:math_expressions/math_expressions.dart';

class Helper {
  static String _displayedText = '0';
  String _newNumber = '';
  static double result = 0, diff = 0;
  static const List<List<String>> _data = [
    ['AC', 'DEL', '%', '/'],
    ['7', '8', '9', '*'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+']
  ];

 static String get displayedText => _displayedText;
static List<List<String>> get data => _data;
  static void calculator(String button) {
    switch (button) {
      case 'AC':
        _displayedText = '0';

        break;
      case 'DEL':
        if (_displayedText != '0') {
          if (_displayedText.length == 1) {
            _displayedText = '0';
          } else {
            _displayedText = _displayedText.substring(0, _displayedText.length - 1);
          }
        }

        break;

      case '%':
        _displayedText = (double.parse(_displayedText) / 100).toString();
        break;
      case '/':
        _displayedText = (double.parse(_displayedText) / 100).toString();
        break;

      case '.':
        if (!_displayedText.contains('.')) {
          _displayedText += '.';
        }
        break;

      case '=':
        Expression exp = Parser().parse(_displayedText);
        result = exp.evaluate(EvaluationType.REAL, ContextModel());
        if (result - result.toInt() == 0.0) {
          result.toInt();
          _displayedText = result.toString();
        } else
          _displayedText = result.toString();

        break;

      case '+':
        _displayedText += button;
        break;

      case '-':
        _displayedText += button;

        break;

      case '/':
        _displayedText += button;

        break;

      case '*':
        _displayedText += button;

        break;

      default:
        if (_displayedText != '0') {
          _displayedText += button;
        } else {
          _displayedText = button;
        }
    }
  }
}
