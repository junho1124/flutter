import 'dart:io';

void main() {
  Hero hero = Hero();
  hero.name = '슈퍼맨';
  hero.HP = 100

  hero.attack();

  print(hero.name);
}

// Hero 타입을 새로 작성
class Hero{
  String name;
  int HP;

  void attack() {
    print('공격!!');
  }

}