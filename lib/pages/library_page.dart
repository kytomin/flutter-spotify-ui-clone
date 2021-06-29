import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              pinned: false,
              floating: true,
              delegate: _Delegate(
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
                                  Border.all(color: Colors.white, width: 0.5)),
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
                                  Border.all(color: Colors.white, width: 0.5)),
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
                                  Border.all(color: Colors.white, width: 0.5)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),




            SliverList(
              delegate: SliverChildListDelegate.fixed([
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text('Recently played', style: Theme.of(context).textTheme.bodyText1,),
                  leading: IconButton(
                    icon: Icon(CupertinoIcons.arrow_up_arrow_down),
                    onPressed: () {},
                    iconSize: Theme.of(context).textTheme.bodyText1!.fontSize!,
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.border_all),
                      onPressed: () {},
                      iconSize: Theme.of(context).textTheme.bodyText1!.fontSize!,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 75,
                  child: Row(
                    children: [
                      Image.network('https://sun9-61.userapi.com/c858124/v858124411/21ba8f/8UYW06axX5g.jpg'),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Liked Songs'),
                            Text('Playlist 342 songs', style: Theme.of(context).textTheme.caption,),
                          ]
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 800,)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _Delegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _Delegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Opacity(
        opacity: 1 - shrinkOffset / 50,
        child: child
    );
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

//headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               SliverAppBar(
//                 pinned: false,
//                 floating: false,
//                 title: Text('Your Library'),
//                 backgroundColor: Theme.of(context).backgroundColor,
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.transparent,
//                   child: Container(
//                     margin: const EdgeInsets.all(10),
//                       child: Image.network(
//                           'https://cdn.pixabay.com/photo/2012/04/24/12/46/letter-39873_1280.png')),
//                 ),
//                 actions: [
//                   IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.add)),
//                 ],
//               ),
//               SliverAppBar(
//                 pinned: false,
//                 floating: true,
//                 leading: Row(
//                   children: [
//                     //CupertinoButton(child: Text('playlist'), onPressed: () {}),
//                     //CupertinoButton(child: Text('playlist'), onPressed: () {}),
//                     //CupertinoButton(child: Text('playlist'), onPressed: () {}),
//                   ],
//                 ),
//
//               ),
//             ];
//           },
//           body: ListView(
//             children: [
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//               SizedBox(height: 60,),
//               Text('-'),
//             ],
//           ),
