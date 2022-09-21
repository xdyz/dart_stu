class Father {
  String name = "zhang";

  num age = 13;
  num mony;
  Father(this.mony);

  Father.origin();

  say() {
    print("我是 $name");
  }

  get getName {
    return this.name;
  }
}
