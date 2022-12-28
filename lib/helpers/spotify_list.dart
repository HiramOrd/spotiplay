import 'package:spotiplay/models/spotify_list.dart';

class HelperSpotifyList {
  static SpotifyList<Type>? merge<Type>({
    required SpotifyList<Type> prevList,
    required SpotifyList<Type> newList,
  }) {
    final nextList = newList;

    nextList.items = [
      ...(prevList.items ?? <Type>[]),
      ...(newList.items ?? <Type>[]),
    ];

    return nextList;
  }
}
