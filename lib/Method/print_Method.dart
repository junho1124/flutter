import 'dart:io';

void main() {
  // 출력
  /// 1
  /// 2
  /// 3
  /// 4
  /// 5
  List<int> inputs = [];

  for (var input in inputs) {
    print(input);
  }
// 1 2 3 4 5
  String result = '';
  for (var input in inputs) {
    result += '$input ';
  }
  print(result);
}
