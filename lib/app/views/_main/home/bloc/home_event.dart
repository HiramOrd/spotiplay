part of 'home_bloc.dart';

class HomeEvent {}

class EventHomeInit extends HomeEvent {}

class EventHomeUpdateSavedAlbums extends HomeEvent {
  final int index;
  EventHomeUpdateSavedAlbums({required this.index});
}

class EventHomeUpdateNewReleases extends HomeEvent {
  final int index;
  EventHomeUpdateNewReleases({required this.index});
}

class EventHomeLogout extends HomeEvent {}
