import 'package:math_expressions/math_expressions.dart';

class Helper {
  static String _displayedText = '0';
  final String _newNumber = '';
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

      case 'DEL':
        if (_displayedText != '0') {
          (_displayedText.length == 1) ? _displayedText = '0' : _displayedText = _displayedText.substring(0, _displayedText.length - 1);
        }

      case '%':
        _displayedText = (_displayedText.convertToDouble() / 100).toString();

      case '.':
        if (!_displayedText.contains('.')) _displayedText += '.';

      case '=':
        Expression exp = Parser().parse(_displayedText);
        result = exp.evaluate(EvaluationType.REAL, ContextModel());
        _displayedText = ((result % 1 == 0) ? result.toInt() : result).toString();

      case '+' || '-' || '*' || '/':
        _displayedText += button;

      default:
        _displayedText = (_displayedText != '0') ? _displayedText + button : button;
    }
  }
}

extension ParseNumber on String
{
  double convertToDouble(){
    return  double.parse(this);
  }
 

}