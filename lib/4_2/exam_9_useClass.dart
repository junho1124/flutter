import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync()!.split(' '); // 문자열 리스트 inputLine 을 선언하고 값을 입력받아 공백으로 구분

  int H = int.parse(inputLine[0]); // 정수 H는 정수로 변환 된 inputLine 의 0번째 값
  int W = int.parse(inputLine[1]); // 정수 W는 정수로 변환 된 inputLine 의 1번째 값

  Image image = new Image(H, W); // image 이름을 가진 새로운 Image 객채 생성

  for (int i = 0; i < H; i++) { // H번 만큼 반복
    // 한줄의 픽셀들로
    // Pixel 객채로 구성된 리스트 inputLine 을 선언하고 입력받은 값을 공백을 기준으로 나누어 정수로된 Pixel 객체로 전환하여 저장
    List<Pixel> inputLine = stdin.readLineSync()!.split(' ').map((e) => Pixel(int.parse(e))).toList();
    Row row = new Row(); // row 라는 이름을 가진 새로운 Row 객체 인스턴스 생성
    row.pixels = inputLine; //inputLine 값을 인스턴스 row 의 pixels 함수에 저장

    image.rows.add(row); // row 값을 인스턴스 image 의 rows 함수에 추가
  }

  print(image.print()); // 객체 image 의 print 함수의 리턴값을 출력

}

class Image {
  int H; // 정수 H 선언
  int W; // 정수 W 선언

  List<Row> rows = []; // Row 인스턴스로 이루어진 리스트 rows 를 선언

  Image(this.H, this.W); // Image 의 생성자로 H, W 값을 설정

  String print() { //문자열을 리턴하는 print 함수 생성
    String result = ''; // 문자열 result 를 선언
    for (var row in rows) { // 불특정의 row 값을 선언하고 리스트 rows 의 값들을 한번씩 대입함
      result += '${row.print()}\n'; // result 에 row 의 값에 Row 객체의 print 함수를 적용하여 저장
    }
    return result; //result 값을 리턴
  }

}

class Row {
  List<Pixel> pixels = []; // Pixel 인스턴스로 이루어진 리스트 pixels 를 선언

  String print() { // 문자열을 리턴하는 print 함수 생성
    String result = ''; // 문자열 result 를 선언
    for (var pixel in pixels) { // 불특정의 pixel 함수를 선언하고 pixels 의 값들을 한번씩 대입함
      result += '${pixel.print()} '; // result 에 pixel 의 값에 Pixel 객체의 print 함수를 적용하여 저장
    }
    return result.trim(); // result 값의 좌우 공백을 제거 한 뒤 리턴
  }
}

class Pixel {
  int value; // 정수 value 를 선언

  Pixel(this.value); // Pixel 의 생성자로 value 값을 설정

  String print() { // 문자열 함수 print 를 생성
    if (value >= 128) { //만약 value 값이 128 이상이라면
      return '1'; // 1을 리턴
    }
    return '0'; // 조건에 해당하지 않으면 0을 리턴
  }
}



