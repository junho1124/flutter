
void main() {
  //sort
  List<int> numbers = [3, 5, 1, 2, 6, 9, 8];


  //void sort() , 리턴을 안한다. : 객채 자체가 변경 될 것이다.
  numbers.sort(); // 오름차순으로 정렬 생활 코딩 참
  print(numbers);

  // 라턴을 하고 있다. : 안에있는 객채를 그대로 두고 외부로 돌려주는 상태
  // 반복되는 타입 => Iterable
  List<int> reverednumbers = numbers.reversed.toList();
  print(reverednumbers);
  print('numbers.reversed');

  //문자열 잘라내기
  String str = 'abcdef';
  print(str == 'abc');
  print(str.substring(1)); // bc
  print(str.substring(1, 2)); //b (end - start)
  print(str.substring(2, 6)); // cdef

  print(str + 'hijk');
  print('${str}hijk');

  String str2 = 'abcd';
  print(str2.isEmpty);
  print(str2.length == 0);

  print(str.contains('de')); // 포함
  print(str.toLowerCase()); //소문자로
  print(str.toUpperCase()); // 대문자로
  print(str); // 소? 대?

  print(str2.replaceAll('a', 'A'));
  print(str2.replaceAll('ab', 'ZZ'));

  print(str2.startsWith('a')); // true
  print(str2.startsWith('b')); // false

  print(str2.endsWith('d')); // true

  print(str2.indexOf('c')); // 2 : 몇번째 인덱스인
  print('     abcd      '.trim()); // 좌우 공백 제

}