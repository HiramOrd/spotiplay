import 'album.dart';

class AlbumList {
  AlbumList({
    this.href,
    this.items,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  String? href;
  List<Album>? items;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;

  factory AlbumList.fromMap(Map<String, dynamic> json) => AlbumList(
        href: json["href"],
        items: json["items"] == null
            ? null
            : List<Album>.from(json["items"].map((x) => Album.fromMap(x))),
        limit: json["limit"],
        next: json["next"],
        offset: json["offset"],
        previous: json["previous"],
        total: json["total"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toMap())),
        "limit": limit,
        "next": next,
        "offset": offset,
        "previous": previous,
        "total": total,
      };
}
