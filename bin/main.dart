void main() {
  // let dart know this could be null
  String? nico = 'nico';
  print(nico.length);

  // late 변수, 변수 이름만 선언하고, 값은 나중에 설정할 수 있도록 만드는 변수
  late final String name;

  // const keyword 는 javascript의 final keyword와 비슷하다.
  // 컴파일과 관련되어있다. 컴파일 될 때 컴파일러가 알고 있는 값
  // 앱스토어에 올리기 전에 알고 있는 값
  const what = 'nico';
  const API = '1123123';

  bool alive = true;
  int age = 12;
  double money = 99.10;

  var numbers = [
    1,
    2,
    3,
  ];
  var giveMeFive = true;
  List<int> numberss = [
    1,
    2,
    3,
    4,
    // collection if
    if (giveMeFive) 5,
  ];
  numbers.add(1);
  numbers.first;
  numbers.last;

  print(numberss);

  var cone = 'cone';
  var myAge = 33;
  // String interpolation
  var greeting = 'Hello everyone, my name is $cone and I\'m ${myAge + 2}';
  print(greeting);
  collectionsFor();
  var age = 18;
  age = 19;
}

void collectionsFor() {
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "😍 $friend"
  ];
  print(newFriends);
  mapsprac();
}

void mapsprac() {
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  Map<int, bool> player2 = {
    1: true,
    2: false,
    3: true,
  };
  print(player.entries);
  setprac();
}

void setprac() {
  var numbers = {
    1,
    2,
    3,
    4,
  };
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}
