typedef DictType = Map<String, String>;

class Dictionary {
  Map<String, DictType> words = {};

  void add(String key, String value) {
    if (!exists(key)) {
      words[key] = {'key': key, 'value': value};
    }
  }

  DictType? get(String key) {
    return words[key];
  }

  void delete(String term) {
    if (exists(term)) {
      words.remove(term);
    }
  }

  void update(String key, String value) {
    if (exists(key)) {
      words[key] = {'key': key, 'value': value};
    }
  }

  void showAll() {
    print('--current words list--');
    words.forEach((key, value) {
      print("key: ${value['key']}, value: ${value['value']}");
    });
    print('----------------------');
  }

  int count() {
    return words.length;
  }

  void upsert(String key, String value) {
    if (!exists(key)) {
      add(key, value);
    } else {
      update(key, value);
    }
  }

  bool exists(String key) {
    return words.containsKey(key);
  }

  void bulkAdd(List<DictType> dictList) {
    for (var dict in dictList) {
      if (dict.containsKey("key") && dict.containsKey("value")) {
        add(dict["key"] ?? "", dict["value"] ?? "");
      }
    }
  }

  void bulkDelete(List<String> keyList) {
    for (var key in keyList) {
      delete(key);
    }
  }
}

void main() {
  var d = Dictionary();
//   add
  d.add("one", "1");
//   get
  print(d.get("one"));
  d.showAll();
  d.add("two", "2");
  d.add("three", "3");
  d.add("four", "4");
  d.add("five", "5");
  d.showAll();
//   delete
  d.delete("five");
  d.showAll();
//   update
  d.update("two", "둘");
  d.showAll();
//   count
  print(d.count());
//   upsert
  d.upsert('seven', "7");
  d.showAll();
  var dicList = [
    {"key": "eight", "value": "8"},
    {"key": "nine", "value": "9"},
    {"key": "ten", "value": "10"}
  ];
//   bulkAdd
  d.bulkAdd(dicList);
  d.showAll();
//   bulkDelete
  var keyList = ["one", "two", "three"];
  d.bulkDelete(keyList);
  d.showAll();
}
