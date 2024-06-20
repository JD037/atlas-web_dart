void outer(String name, String id) {
  String inner() {
    var parts = name.split(' ');
    return 'Hello Agent ${parts[1][0]}.${parts[0]} your id is $id';
  }

  print(inner());
}
