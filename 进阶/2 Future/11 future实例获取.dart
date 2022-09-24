void main(List<String> args) {
  final myFuture = new Future(() {
    return 123;
  });

  print(myFuture);

  myFuture.then((value) => {print(value)});

  print("done");
}
