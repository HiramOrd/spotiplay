class Followers {
  Followers({
    this.href,
    this.total,
  });

  String? href;
  int? total;

  factory Followers.fromMap(Map<String, dynamic> json) => Followers(
        href: json["href"],
        total: json["total"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
        "total": total,
      };
}
