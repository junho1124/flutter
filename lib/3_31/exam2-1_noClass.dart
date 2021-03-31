import 'dart:io';
void main() {
  String input = stdin.readLineSync()!;  // PAIZA
  String result = '';
  for (int i = 0; i < input.length; i++) {
    String ch = input[i];
    if (ch == 'A') {
      result += '4';
    } else if (ch == 'E') {
      result += '3';
    } else if (ch == 'G') {
      result += '6';
    } else if (ch == 'I') {
      result += '1';
    } else if (ch == 'O') {
      result += '0';
    } else if (ch == 'S') {
      result += '5';
    } else if (ch == 'Z') {
      result += '2';
    } else {
      result = result + ch;   // result += ch;
    }
  }
  print(result);
}