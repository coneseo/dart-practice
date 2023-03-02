abstract class Human {
  void walk();
}

// class 강좌
// class를 생성할 때는 변수들의 타입을 꼭 만들어 주는게 좋다.
class Player extends Human {
  final String name;
  int xp, age;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        age = playerJson['age'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }

  void walk() {
    print('I am walking');
  }
}

class Coach extends Human {
  void walk() {
    print("Coach is walking");
  }
}

void main() {
  var apiData = [
    {'name': 'kyle', 'xp': 0, 'age': 33, 'team': 'blue'},
    {'name': 'jia', 'xp': 0, 'age': 27, 'team': 'blue'},
    {'name': 'lucky', 'xp': 0, 'age': 2, 'team': 'red'},
    {'name': 'gommy', 'xp': 0, 'age': 2, 'team': 'red'},
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
