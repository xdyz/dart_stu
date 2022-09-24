class HashCodeClass {}

// 单例模式

class Singleton {
  static Singleton instance;
  Singleton._internal();

  static getInstance() {
    if (instance == null) {
      instance = Singleton._internal();
    }

    return instance;
  }

  factory Singleton() => getInstance();
}

void main(List<String> args) {
  // 每次运行 hashCode的值是不一样的
  var h = new HashCodeClass();
  var h1 = new HashCodeClass();

  print(h.hashCode);
  print(h1.hashCode);

  var s = new Singleton();
  var s1 = new Singleton();

  print(s.hashCode);
  print(s1.hashCode);
}
