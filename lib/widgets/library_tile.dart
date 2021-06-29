import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryTile extends StatelessWidget {
  const LibraryTile({Key? key, required this.image, required this.name, required this.type, this.comment}) : super(key: key);

  final Widget image;
  final String name;
  final String type;
  final String? comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 75,
      child: Row(
        children: [
          image,
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(name),
                  Text('$type ${comment != null ? '· $comment' : ''}', style: Theme.of(context).textTheme.caption,),
                ]
            ),
          )
        ],
      ),
    );
  }
}
