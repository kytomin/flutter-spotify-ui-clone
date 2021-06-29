import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/playlist_tile.dart';
import 'package:spotify_ui/widgets/playlist_view.dart';

final _recentlyPlaylists = [
  PlaylistTile(
    text: 'The Rolling Stones',
    image: Image.network(
        'https://24smi.org/public/media/resize/800x-/celebrity/2018/09/25/t1cgzo4czgou-gruppa-the-rolling-stones.jpg'),
  ),
  PlaylistTile(
    text: 'Army Of Lovers',
    image: Image.network(
        'https://avatars.mds.yandex.net/get-zen_doc/1596193/pub_5de9ede11d656a00aeaf5a7e_5de9ef9243863f00b20464d4/scale_1200'),
  ),
  PlaylistTile(
    text: 'System of a Down',
    image: Image.network(
        'https://im0-tub-ru.yandex.net/i?id=a88a1b1d4e4d8f3e818e798496990c94&n=13'),
  ),
  PlaylistTile(
    text: 'MORGENSHTERN',
    image: Image.network(
        'https://im0-tub-ru.yandex.net/i?id=4598aab9d74b25edac3c19893c156e8c&n=13'),
  ),
];

final _morgenshternPlaylists = [
  PlaylistTile(
    text: 'SLAVA MARLOW\nRadio',
    image: Image.network(
        'https://im0-tub-ru.yandex.net/i?id=e404ab465f46b7b7aec838aa30acce00&n=13'),
  ),
  PlaylistTile(
    text: 'Kizaru',
    image: Image.network(
        'https://images.genius.com/efc3045ad1d2f4eb50ca2a556eafb568.1000x1000x1.png'),
  ),
  PlaylistTile(
    text: 'OG Buda',
    image: Image.network(
        'https://avatars.yandex.net/get-music-content/3334966/e8c78d56.p.5880813/400x400'),
  ),
  PlaylistTile(
    text: 'MORGENSHTERN',
    image: Image.network(
        'https://im0-tub-ru.yandex.net/i?id=4598aab9d74b25edac3c19893c156e8c&n=13'),
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SizedBox.expand(
          child: ListView(children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0, 3),
                  colors: [
                    const Color(0xFF729c72),
                    const Color(0xFF353f36),
                    Theme.of(context).backgroundColor,
                  ],
                  stops: const [0, 0.2, 0.4],
                ),
              ),
              child: PlaylistView(
                height: 200,
                title: 'Recently Played',
                children: _recentlyPlaylists,
                actions: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.history,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.settings_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            PlaylistView(
              image: Image.network(
                  'https://pbs.twimg.com/media/EmsDcJkXUAAU4eS.jpg'),
              label: 'MORE LIKE',
              title: 'MORGENSHTERN',
              children: _morgenshternPlaylists,
            ),
            PlaylistView(
              title: 'Made for You',
              children: _recentlyPlaylists,
            ),
          ]),
        ));
  }
}
