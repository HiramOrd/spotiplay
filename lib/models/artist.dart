import 'followers.dart';
import 'external_url.dart';
import 'image.dart';

class Artist {
  Artist({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  ExternalUrl? externalUrls;
  Followers? followers;
  List<String>? genres;
  String? href;
  String? id;
  List<Image>? images;
  String? name;
  int? popularity;
  String? type;
  String? uri;

  factory Artist.fromMap(Map<String, dynamic> json) => Artist(
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrl.fromMap(json["external_urls"]),
        followers: json["followers"] == null
            ? null
            : Followers.fromMap(json["followers"]),
        genres: json["genres"] == null
            ? null
            : List<String>.from(json["genres"].map((x) => x)),
        href: json["href"],
        id: json["id"],
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        name: json["name"],
        popularity: json["popularity"],
        type: json["type"],
        uri: json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "external_urls": externalUrls?.toMap(),
        "followers": followers?.toMap(),
        "genres":
            genres == null ? null : List<dynamic>.from(genres!.map((x) => x)),
        "href": href,
        "id": id,
        "images": images == null
            ? null
            : List<dynamic>.from(images!.map((x) => x.toMap())),
        "name": name,
        "popularity": popularity,
        "type": type,
        "uri": uri,
      };
}
