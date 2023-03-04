// mixin의 조건은 생성자가 없는 것
// mixin으로 만들어 놓은 것을 with 을 통해서 뺏어올 수 있다.

class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
  );
  player.runQuick();
}
