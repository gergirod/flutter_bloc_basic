class Info {

  String seed;
  int results;
  int page;
  String version;

  Info({
    this.seed,
    this.results,
    this.page,
    this.version});

  factory Info.fromMap(Map<String, dynamic> map) {

    return Info();

  }

}