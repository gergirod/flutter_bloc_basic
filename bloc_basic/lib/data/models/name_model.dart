class Name {

  String title;
  String first;
  String last;

  Name({
    this.title,
    this.first,
    this.last});


  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      title: map['title'],
      first: map['first'],
      last: map['last']
    );
  }

  Map<String, dynamic> toJson() =>

      {
        "title" : title,
        "first" :  first,
        "last" : last
      };
}