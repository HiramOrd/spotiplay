import 'package:spotiplay/core/exceptions/repository.dart';
import 'package:spotiplay/helpers/repository.dart';
import 'package:spotiplay/models/album_list.dart';
import 'package:spotiplay/models/repository/music.dart';
import 'package:spotiplay/core/dio.dart';

class RepositoryMusicImpl extends RepositoryMusic {
  @override
  Future<AlbumList> getNewReleases() async {
    final data = await DioClient().dio.get('/new-releases');

    HelperRepository.isValidResponse(data.statusCode);

    if (data.data['albums'] == null) throw RepositoryNullDataException();
    return AlbumList.fromMap(data.data['albums']);
  }
}
