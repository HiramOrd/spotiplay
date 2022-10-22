import 'package:spotiplay/models/album.dart';

class AlbumSaved {
  AlbumSaved({
    this.addedAt,
    this.album,
  });

  final DateTime? addedAt;
  final Album? album;

  factory AlbumSaved.fromMap(Map<String, dynamic> json) => AlbumSaved(
        addedAt:
            json["added_at"] == null ? null : DateTime.parse(json["added_at"]),
        album: json["album"] == null ? null : Album.fromMap(json["album"]),
      );

  Map<String, dynamic> toMap() => {
        "added_at": addedAt?.toIso8601String(),
        "album": album?.toMap(),
      };
}
