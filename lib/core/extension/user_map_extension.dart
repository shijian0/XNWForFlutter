extension UserNameExtent on Map {
  String get nickNameAtAccount {
    String nameString = "";
    if (this.containsKey("tuser")) {
      Map tuser = this["tuser"];
      nameString = tuser.nickNameAtAccount;
    } else if (this.containsKey("name")) {
      nameString = this["name"];
    } else if (this.containsKey("nickname")) {
      nameString = this["nickname"];
    } else if (this.containsKey("account")) {
      nameString = this["account"];
    } else if (this.containsKey("uid")) {
      nameString = this["uid"];
    } else if (this.containsKey("gid")) {
      nameString = this["gid"];
    }
    return nameString;
  }
}
