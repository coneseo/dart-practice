String sayHello(String name) {
  return "Hello $name nice to meet you!";
}

String sayHelloArrow(String name) => "Hello $name nice to meet you!";

num plus(num a, num b) => a + b;

void main() {
  print(sayHello('kyle'));
  print(plus(1.1, 2.1));

  String? name;
  name ??= 'kyle';
  name = null;
  name ??= 'what';
  print(name);
  print(reverseListOfNumbers([
    1,
    2,
    3,
  ]));
}

// String capitalizeName(String name){
//   return name.toUpperCase();
// }

// String caplitalizeName(String? name) {
//   if (name != null) {
//     return name.toUpperCase();
//   } else {
//     return "ANON";
//   }
// }

//  ?? expression QQ operator
// left ?? right
String capitalizeName(String? name) => name?.toUpperCase() ?? "ANON";

// Typedef ( make alias )
// 자료형에 나만의 별칭을 만들 수 있게 해줌
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}
