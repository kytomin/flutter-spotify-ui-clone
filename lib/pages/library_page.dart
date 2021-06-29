import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/library_tile.dart';

final _library = [
  LibraryTile(
    image: Image.network(
        'https://sun9-61.userapi.com/c858124/v858124411/21ba8f/8UYW06axX5g.jpg'),
    name: 'Liked Songs',
    type: 'Playlist',
    comment: '342 songs',
  ),
  LibraryTile(
    image: Image.network(
        'https://im0-tub-ru.yandex.net/i?id=a88a1b1d4e4d8f3e818e798496990c94&n=13'),
    name: 'System of a Down',
    type: 'Artist',
  ),
  LibraryTile(
    image: Image.network(
        'https://24smi.org/public/media/resize/800x-/celebrity/2018/09/25/t1cgzo4czgou-gruppa-the-rolling-stones.jpg'),
    name: 'The Rolling Stones',
    type: 'Artist',
  ),
  LibraryTile(
    image: Image.network(
        'https://im0-tub-ru.yandex.net/i?id=4f33a4a0de000c0f5675274b012eb8db-l&n=13'),
    name: 'EQUAL Russia',
    type: 'Playlist',
    comment: 'Spotify',
  ),
];

class LibraryPage extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final ScrollPhysics physics = ScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Library'),
        backgroundColor: Theme.of(context).backgroundColor,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2012/04/24/12/46/letter-39873_1280.png')),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: _DelegateOpacity(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Theme.of(context).backgroundColor,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          margin: const EdgeInsets.only(right: 10),
                          child: Text('Playlists'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Theme.of(context).accentColor, width: 0.5)),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          margin: const EdgeInsets.only(right: 10),
                          child: Text('Artists'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Theme.of(context).accentColor, width: 0.5)),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          margin: const EdgeInsets.only(right: 10),
                          child: Text('Albums'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Theme.of(context).accentColor, width: 0.5)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: _Delegate(
                  height: 1,
                    child: Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      offset: Offset(0, 1),
                    )]
                  ),
                ))),
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'Recently played',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  leading: IconButton(
                    icon: Icon(CupertinoIcons.arrow_up_arrow_down),
                    onPressed: () {},
                    iconSize: Theme.of(context).textTheme.bodyText1!.fontSize!,
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.border_all),
                      onPressed: () {},
                      iconSize:
                          Theme.of(context).textTheme.bodyText1!.fontSize!,
                    ),
                  ],
                ),
                ..._library,
                SizedBox(
                  height: 800,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _DelegateOpacity extends SliverPersistentHeaderDelegate {
  final Widget child;

  _DelegateOpacity({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: Opacity(
          opacity: shrinkOffset < 25 ? 1 - shrinkOffset / 25 : 0, child: child),
      color: Theme.of(context).backgroundColor,
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class _Delegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  final double height;

  _Delegate({required this.height, required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
