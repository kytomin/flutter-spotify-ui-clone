import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaylistTile extends StatelessWidget {

  final double width;
  final String text;
  final Image image;

  const PlaylistTile({Key? key, this.width = 120, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
                child: image,
            ),
            SizedBox(height: 5,),
            SizedBox(
              height: 30,
              child: Text(
                text,
                style: Theme.of(context).textTheme.caption!,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
