import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:spotify_ui/widgets/genre_tile.dart';

class SearchPage extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final ScrollPhysics physics = ScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: NestedScrollView(
                controller: controller,
                physics: physics,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    new SliverPadding(
                      padding: new EdgeInsets.all(0),
                      sliver: new SliverList(
                        delegate: new SliverChildListDelegate([
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                            child: Text(
                              'Search',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ], ),
                      ),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      floating: false,
                      delegate: _Delegate(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            color: Theme.of(context).backgroundColor,
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  Text(
                                    ' Artists, songs, or albums',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: ListView(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Your top genres',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    StaggeredGridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      padding: const EdgeInsets.all(0),
                      crossAxisCount: 2,
                      staggeredTiles: [
                        StaggeredTile.count(1, 0.6),
                        StaggeredTile.count(1, 0.6),
                        StaggeredTile.count(1, 0.6),
                        StaggeredTile.count(1, 0.6),
                      ],
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        GenreTile(
                          color: Color(0Xffd01e31),
                          text: 'Rock',
                          image: Image.network(
                              'https://i.scdn.co/image/ab67706f00000003feb66cd1f6632ecfa89b3e8c'),
                        ),
                        GenreTile(
                          color: Color(0xff8c67ac),
                          text: 'Pop',
                          image: Image.network(
                              'https://avatars.yandex.net/get-music-content/2359742/0a822342.a.10539139-1/m1000x1000?webp=false'),
                        ),
                        GenreTile(
                          color: Color(0xffe0a03a),
                          text: 'Hip Hop',
                          image: Image.network(
                              'https://thumbnailer.mixcloud.com/unsafe/600x600/extaudio/5/f/d/8/d81c-4968-4c38-b0bd-050a5638e284'),
                        ),
                        GenreTile(
                          color: Color(0xff1e8284),
                          text: 'Chill',
                          image: Image.network(
                              'https://avatars.yandex.net/get-music-content/2114230/f49e99af.a.10245386-1/m1000x1000?webp=false'),
                        ),
                      ],
                    ),
                    Text('Browse all',
                      style: Theme.of(context).textTheme.bodyText1,),
                    SizedBox(height: 15,),
                    StaggeredGridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      padding: const EdgeInsets.all(0),
                      crossAxisCount: 2,
                      staggeredTiles: [
                        StaggeredTile.count(1, 0.6),
                        StaggeredTile.count(1, 0.6),
                        StaggeredTile.count(1, 0.6),
                        StaggeredTile.count(1, 0.6),
                      ],
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        GenreTile(
                          color: Color(0Xffd01e31),
                          text: 'Rock',
                          image: Image.network(
                              'https://i.scdn.co/image/ab67706f00000003feb66cd1f6632ecfa89b3e8c'),
                        ),
                        GenreTile(
                          color: Color(0xff8c67ac),
                          text: 'Pop',
                          image: Image.network(
                              'https://avatars.yandex.net/get-music-content/2359742/0a822342.a.10539139-1/m1000x1000?webp=false'),
                        ),
                        GenreTile(
                          color: Color(0xffe0a03a),
                          text: 'Hip Hop',
                          image: Image.network(
                              'https://thumbnailer.mixcloud.com/unsafe/600x600/extaudio/5/f/d/8/d81c-4968-4c38-b0bd-050a5638e284'),
                        ),
                        GenreTile(
                          color: Color(0xff1e8284),
                          text: 'Chill',
                          image: Image.network(
                              'https://avatars.yandex.net/get-music-content/2114230/f49e99af.a.10245386-1/m1000x1000?webp=false'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 600,
                    )
                  ],
                ))));
  }
}

class _Delegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _Delegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
