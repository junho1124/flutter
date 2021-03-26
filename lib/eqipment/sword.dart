class Sword {
  //전역변수
  int _damage;
  int _price;
  String _description;
  String _name;

  //alt + insult
  Sword(this._name, this._damage, this._price, this._description);

  int get damage => _damage;
  int get price => _price;
  String get description => _description;
  String get name => _name;

  void attack() {
    print('$name 으로 $damage의 피해를 주었다!!');
  }
}