import 'package:spotiplay/models/artist.dart';
import 'package:spotiplay/models/repository/artist.dart';

class RepositoryArtistTemp extends RepositoryArtist {
  @override
  Future<List<Artist>> getRelatedArtist(String idArtist) async {
    await Future.delayed(const Duration(seconds: 1));
    return ([
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/5IONMXTbTpZKzkiepXoohq"
        },
        "followers": {"href": null, "total": 39727},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/5IONMXTbTpZKzkiepXoohq",
        "id": "5IONMXTbTpZKzkiepXoohq",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb9ad4ece627cd22d72ee23e0d",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab676161000051749ad4ece627cd22d72ee23e0d",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f1789ad4ece627cd22d72ee23e0d",
            "width": 160
          }
        ],
        "name": "Alfarero",
        "popularity": 36,
        "type": "artist",
        "uri": "spotify:artist:5IONMXTbTpZKzkiepXoohq"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1gofTzaOSte0KzDoubTJhS"
        },
        "followers": {"href": null, "total": 150156},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/1gofTzaOSte0KzDoubTJhS",
        "id": "1gofTzaOSte0KzDoubTJhS",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb888a2e95ebda34ce3d16f657",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174888a2e95ebda34ce3d16f657",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178888a2e95ebda34ce3d16f657",
            "width": 160
          }
        ],
        "name": "Majo Solís",
        "popularity": 42,
        "type": "artist",
        "uri": "spotify:artist:1gofTzaOSte0KzDoubTJhS"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/6UhhJKLSxxAPmFQ6j8wY1c"
        },
        "followers": {"href": null, "total": 50918},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/6UhhJKLSxxAPmFQ6j8wY1c",
        "id": "6UhhJKLSxxAPmFQ6j8wY1c",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebd97cde9e358d8672d5f2823d",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174d97cde9e358d8672d5f2823d",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178d97cde9e358d8672d5f2823d",
            "width": 160
          }
        ],
        "name": "Música Más Vida",
        "popularity": 43,
        "type": "artist",
        "uri": "spotify:artist:6UhhJKLSxxAPmFQ6j8wY1c"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/6gv84Nihr8Dg93KuxArFxl"
        },
        "followers": {"href": null, "total": 10885},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/6gv84Nihr8Dg93KuxArFxl",
        "id": "6gv84Nihr8Dg93KuxArFxl",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebb2543a1f8e7027af9ce4192a",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174b2543a1f8e7027af9ce4192a",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178b2543a1f8e7027af9ce4192a",
            "width": 160
          }
        ],
        "name": "Isra y Vale",
        "popularity": 45,
        "type": "artist",
        "uri": "spotify:artist:6gv84Nihr8Dg93KuxArFxl"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/45ofU8JjddtvjfP1UXV7um"
        },
        "followers": {"href": null, "total": 32806},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/45ofU8JjddtvjfP1UXV7um",
        "id": "45ofU8JjddtvjfP1UXV7um",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb13dcc8e92ac618be4bb6a702",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab6761610000517413dcc8e92ac618be4bb6a702",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f17813dcc8e92ac618be4bb6a702",
            "width": 160
          }
        ],
        "name": "Ayrton Day",
        "popularity": 41,
        "type": "artist",
        "uri": "spotify:artist:45ofU8JjddtvjfP1UXV7um"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/474ajACVnzDvuItIDa85Ym"
        },
        "followers": {"href": null, "total": 66144},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/474ajACVnzDvuItIDa85Ym",
        "id": "474ajACVnzDvuItIDa85Ym",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebc9a98f79acae55a9b7ce623e",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174c9a98f79acae55a9b7ce623e",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178c9a98f79acae55a9b7ce623e",
            "width": 160
          }
        ],
        "name": "Banda Montreal",
        "popularity": 34,
        "type": "artist",
        "uri": "spotify:artist:474ajACVnzDvuItIDa85Ym"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/5r9Zij3jkM3BXJOjRpkpzF"
        },
        "followers": {"href": null, "total": 24622},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/5r9Zij3jkM3BXJOjRpkpzF",
        "id": "5r9Zij3jkM3BXJOjRpkpzF",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb14fa025ad22bb9a06f3ffa14",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab6761610000517414fa025ad22bb9a06f3ffa14",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f17814fa025ad22bb9a06f3ffa14",
            "width": 160
          }
        ],
        "name": "Michael Bunster",
        "popularity": 33,
        "type": "artist",
        "uri": "spotify:artist:5r9Zij3jkM3BXJOjRpkpzF"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1w76rpst0I6hGUgCR2B33C"
        },
        "followers": {"href": null, "total": 448946},
        "genres": ["latin worship", "rock cristiano"],
        "href": "https://api.spotify.com/v1/artists/1w76rpst0I6hGUgCR2B33C",
        "id": "1w76rpst0I6hGUgCR2B33C",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebd362c81642c1d0fa255c7b89",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174d362c81642c1d0fa255c7b89",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178d362c81642c1d0fa255c7b89",
            "width": 160
          }
        ],
        "name": "Generación 12",
        "popularity": 57,
        "type": "artist",
        "uri": "spotify:artist:1w76rpst0I6hGUgCR2B33C"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/4okcJqKIn8TGpUDaDLDlRl"
        },
        "followers": {"href": null, "total": 89753},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/4okcJqKIn8TGpUDaDLDlRl",
        "id": "4okcJqKIn8TGpUDaDLDlRl",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb19008a733fad9b7a298cdd0d",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab6761610000517419008a733fad9b7a298cdd0d",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f17819008a733fad9b7a298cdd0d",
            "width": 160
          }
        ],
        "name": "Aliento",
        "popularity": 40,
        "type": "artist",
        "uri": "spotify:artist:4okcJqKIn8TGpUDaDLDlRl"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1W3alM5B0pfEeiVnT9XmBO"
        },
        "followers": {"href": null, "total": 56654},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/1W3alM5B0pfEeiVnT9XmBO",
        "id": "1W3alM5B0pfEeiVnT9XmBO",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebb9fb14e118fac3c3ff2473b0",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174b9fb14e118fac3c3ff2473b0",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178b9fb14e118fac3c3ff2473b0",
            "width": 160
          }
        ],
        "name": "Job González",
        "popularity": 41,
        "type": "artist",
        "uri": "spotify:artist:1W3alM5B0pfEeiVnT9XmBO"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/7xJZNfI5Yks87tn3ebHy9h"
        },
        "followers": {"href": null, "total": 175856},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/7xJZNfI5Yks87tn3ebHy9h",
        "id": "7xJZNfI5Yks87tn3ebHy9h",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb2b09833cc033fbe40d8a5eee",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab676161000051742b09833cc033fbe40d8a5eee",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f1782b09833cc033fbe40d8a5eee",
            "width": 160
          }
        ],
        "name": "Toma Tu Lugar",
        "popularity": 54,
        "type": "artist",
        "uri": "spotify:artist:7xJZNfI5Yks87tn3ebHy9h"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/4wSfiTrdcKdVZ7L7wNSaE3"
        },
        "followers": {"href": null, "total": 103122},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/4wSfiTrdcKdVZ7L7wNSaE3",
        "id": "4wSfiTrdcKdVZ7L7wNSaE3",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb9535261b24e7a1cde6fdecde",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab676161000051749535261b24e7a1cde6fdecde",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f1789535261b24e7a1cde6fdecde",
            "width": 160
          }
        ],
        "name": "Conquistando Fronteras",
        "popularity": 41,
        "type": "artist",
        "uri": "spotify:artist:4wSfiTrdcKdVZ7L7wNSaE3"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/01uLFuopGIW0WmZrbMLUfL"
        },
        "followers": {"href": null, "total": 46549},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/01uLFuopGIW0WmZrbMLUfL",
        "id": "01uLFuopGIW0WmZrbMLUfL",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebe5366f1652feed2eebbb1c25",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174e5366f1652feed2eebbb1c25",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178e5366f1652feed2eebbb1c25",
            "width": 160
          }
        ],
        "name": "Harold y Elena",
        "popularity": 38,
        "type": "artist",
        "uri": "spotify:artist:01uLFuopGIW0WmZrbMLUfL"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/3phVKYqeq84Ai91CHTQfNq"
        },
        "followers": {"href": null, "total": 588085},
        "genres": ["latin worship", "world worship"],
        "href": "https://api.spotify.com/v1/artists/3phVKYqeq84Ai91CHTQfNq",
        "id": "3phVKYqeq84Ai91CHTQfNq",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebf0981d2d660c3f51e486cb1f",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174f0981d2d660c3f51e486cb1f",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178f0981d2d660c3f51e486cb1f",
            "width": 160
          }
        ],
        "name": "Hillsong en Español",
        "popularity": 61,
        "type": "artist",
        "uri": "spotify:artist:3phVKYqeq84Ai91CHTQfNq"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/7wxEfNSLam1iBAyIhdpSUh"
        },
        "followers": {"href": null, "total": 36955},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/7wxEfNSLam1iBAyIhdpSUh",
        "id": "7wxEfNSLam1iBAyIhdpSUh",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb82d588c4e4c47116e0e93db5",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab6761610000517482d588c4e4c47116e0e93db5",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f17882d588c4e4c47116e0e93db5",
            "width": 160
          }
        ],
        "name": "Jaz Jacob",
        "popularity": 32,
        "type": "artist",
        "uri": "spotify:artist:7wxEfNSLam1iBAyIhdpSUh"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/6O1gkriLfZg5mnBrTlBq1N"
        },
        "followers": {"href": null, "total": 27719},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/6O1gkriLfZg5mnBrTlBq1N",
        "id": "6O1gkriLfZg5mnBrTlBq1N",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebdf7c82bced7188670102478e",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174df7c82bced7188670102478e",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178df7c82bced7188670102478e",
            "width": 160
          }
        ],
        "name": "Jan Earle",
        "popularity": 35,
        "type": "artist",
        "uri": "spotify:artist:6O1gkriLfZg5mnBrTlBq1N"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1qDjgJp4309K5Luv08G0gz"
        },
        "followers": {"href": null, "total": 13989},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/1qDjgJp4309K5Luv08G0gz",
        "id": "1qDjgJp4309K5Luv08G0gz",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb7bd034cf1d64edcb637028c9",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab676161000051747bd034cf1d64edcb637028c9",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f1787bd034cf1d64edcb637028c9",
            "width": 160
          }
        ],
        "name": "Música De Movimiento",
        "popularity": 30,
        "type": "artist",
        "uri": "spotify:artist:1qDjgJp4309K5Luv08G0gz"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/3icg8QXxKDihHvzfoC1Vpm"
        },
        "followers": {"href": null, "total": 32903},
        "genres": ["electronica cristiana", "rap cristiano"],
        "href": "https://api.spotify.com/v1/artists/3icg8QXxKDihHvzfoC1Vpm",
        "id": "3icg8QXxKDihHvzfoC1Vpm",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5eb9016111891ccd0c951786524",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab676161000051749016111891ccd0c951786524",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f1789016111891ccd0c951786524",
            "width": 160
          }
        ],
        "name": "Nxtwave",
        "popularity": 45,
        "type": "artist",
        "uri": "spotify:artist:3icg8QXxKDihHvzfoC1Vpm"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/6pdXxGaaEGf7huw3C6fz6a"
        },
        "followers": {"href": null, "total": 67141},
        "genres": ["latin worship", "rap cristiano"],
        "href": "https://api.spotify.com/v1/artists/6pdXxGaaEGf7huw3C6fz6a",
        "id": "6pdXxGaaEGf7huw3C6fz6a",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebd0c59d0dcc7b1de938131618",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174d0c59d0dcc7b1de938131618",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178d0c59d0dcc7b1de938131618",
            "width": 160
          }
        ],
        "name": "Gilberto Daza",
        "popularity": 50,
        "type": "artist",
        "uri": "spotify:artist:6pdXxGaaEGf7huw3C6fz6a"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/61tv5wBp8BSzZ1S6mNqvJ8"
        },
        "followers": {"href": null, "total": 18753},
        "genres": ["latin worship"],
        "href": "https://api.spotify.com/v1/artists/61tv5wBp8BSzZ1S6mNqvJ8",
        "id": "61tv5wBp8BSzZ1S6mNqvJ8",
        "images": [
          {
            "height": 640,
            "url":
                "https://i.scdn.co/image/ab6761610000e5ebf2f4113e85bcf85e9ad2feb2",
            "width": 640
          },
          {
            "height": 320,
            "url":
                "https://i.scdn.co/image/ab67616100005174f2f4113e85bcf85e9ad2feb2",
            "width": 320
          },
          {
            "height": 160,
            "url":
                "https://i.scdn.co/image/ab6761610000f178f2f4113e85bcf85e9ad2feb2",
            "width": 160
          }
        ],
        "name": "Nathan Ironside",
        "popularity": 38,
        "type": "artist",
        "uri": "spotify:artist:61tv5wBp8BSzZ1S6mNqvJ8"
      }
    ]).map((e) => Artist.fromMap(e)).toList();
  }
}
