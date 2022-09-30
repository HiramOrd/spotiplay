import 'artist.dart';
import 'external_url.dart';
import 'image.dart';

class Album {
  Album({
    this.albumType,
    this.artists,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.totalTracks,
    this.type,
    this.uri,
  });

  String? albumType;
  List<Artist>? artists;
  List<String>? availableMarkets;
  ExternalUrl? externalUrls;
  String? href;
  String? id;
  List<Image>? images;
  String? name;
  DateTime? releaseDate;
  String? releaseDatePrecision;
  int? totalTracks;
  String? type;
  String? uri;

  factory Album.fromMap(Map<String, dynamic> json) => Album(
        albumType: json["album_type"],
        artists: json["artists"] == null
            ? null
            : List<Artist>.from(json["artists"].map((x) => Artist.fromMap(x))),
        availableMarkets: json["available_markets"] == null
            ? null
            : List<String>.from(json["available_markets"].map((x) => x)),
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrl.fromMap(json["external_urls"]),
        href: json["href"],
        id: json["id"],
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        name: json["name"],
        releaseDate: json["release_date"] == null
            ? null
            : DateTime.parse(json["release_date"]),
        releaseDatePrecision: json["release_date_precision"],
        totalTracks: json["total_tracks"],
        type: json["type"],
        uri: json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "album_type": albumType,
        "artists": artists == null
            ? null
            : List<dynamic>.from(artists!.map((x) => x.toMap())),
        "available_markets": availableMarkets == null
            ? null
            : List<dynamic>.from(availableMarkets!.map((x) => x)),
        "external_urls": externalUrls == null ? null : externalUrls!.toMap(),
        "href": href,
        "id": id,
        "images": images == null
            ? null
            : List<dynamic>.from(images!.map((x) => x.toMap())),
        "name": name,
        "release_date": releaseDate == null
            ? null
            : "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "release_date_precision": releaseDatePrecision,
        "total_tracks": totalTracks,
        "type": type,
        "uri": uri,
      };
}
