class ExternalUrl {
  ExternalUrl({this.spotify});

  String? spotify;

  factory ExternalUrl.fromMap(Map<String, dynamic> json) => ExternalUrl(
        spotify: json["spotify"],
      );

  Map<String, dynamic> toMap() => {
        "spotify": spotify,
      };
}
