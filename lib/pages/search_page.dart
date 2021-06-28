import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final ScrollPhysics physics = ScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
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
                          Align(
                            child: Text(
                              'Search',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ]),
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
                            padding: const EdgeInsets.only(bottom: 5),
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
                    Container(
                      height: 200,
                      color: Colors.white,
                    ),
                    Container(
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 200,
                      color: Colors.black,
                    ),
                    Container(
                      height: 200,
                      color: Colors.pink,
                    ),
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
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
