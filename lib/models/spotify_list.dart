class SpotifyList<T> {
  SpotifyList({
    this.href,
    this.items,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  String? href;
  List<T>? items;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;

  factory SpotifyList.fromMap(Map<String, dynamic> json, [List<T>? items]) =>
      SpotifyList(
        href: json["href"],
        items: items,
        limit: json["limit"],
        next: json["next"],
        offset: json["offset"],
        previous: json["previous"],
        total: json["total"],
      );

  Map<String, dynamic> toMap([Map? items]) => {
        "href": href,
        "items": items,
        "limit": limit,
        "next": next,
        "offset": offset,
        "previous": previous,
        "total": total,
      };
}
