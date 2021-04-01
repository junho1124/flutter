import 'dart:io';

void main() {
  Weather weather = Weather();
  int per = int.parse(stdin.readLineSync()!);
  print(weather.rainy(per));
}

class Weather {
  String rainy(int percent) {
    String result = 'rainy';
    if (0 <= percent && percent <= 30) {
      result = 'sunny';
    } else if (31 <= percent && percent <= 70) {
      result = 'cloudy';
    }
    return result;
  }
}
