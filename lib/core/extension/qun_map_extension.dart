extension QunNameExtension on Map {
  String get qunName {
    String name = "";
    if (this.containsKey("name")) {
      name = this["name"];
    } else if (this.containsKey("full_name")) {
      name = this["full_name"];
    } else if (this.containsKey("qid")) {
      name = this["qid"];
    } else {
      name = this["id"];
    }
    return name;
  }
}
