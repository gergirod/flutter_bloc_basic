class Picture {

  String large;
  String medium;
  String thumbnail;

  Picture({
    this.large,
    this.medium,
    this.thumbnail
  });

  factory Picture.fromMap(Map<String, dynamic> map) {
    return Picture(
      large: map['large'],
      medium: map['medium'],
      thumbnail: map['thumbnail']
    );
  }

  Map<String, dynamic> toJson() =>

      {
        "large" : large,
        "medium" :  medium,
        "thumbnail" : thumbnail
      };

}