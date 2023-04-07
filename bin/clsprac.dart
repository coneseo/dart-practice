// class 강좌
// class를 생성할 때는 변수들의 타입을 꼭 만들어 주는게 좋다.
class Player {
  String name;
  int xp, age;
  String team;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }
  // 아래와 같이 간결해질 수 있다.

  // named constructure parameter
  // 생성자.
  // 이름이 class와 같아야 한다.
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : age = age,
        name = name,
        team = 'blue',
        xp = 0;

  Player.createRedPlayer(
    String name,
    int age,
  )   : age = age,
        name = name,
        team = 'red',
        xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  // make named arguments
  var player1 = Player.createBluePlayer(name: 'kyle', age: 33);
  // make positional arguments
  var player2 = Player.createRedPlayer("jia", 27);

  var player3 = player1
    ..name = 'jiaKim'
    ..age = 28
    ..team = 'yellow'
    ..sayHello();
}
