import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PlaylistView extends StatelessWidget {
  final double height;
  final String? label;
  final String title;
  final Widget? image;
  final List<Widget>? actions;
  final List<Widget> children;

  const PlaylistView(
      {Key? key,
      this.label,
      required this.title,
      this.image,
      required this.children,
      this.actions, this.height = 230})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 15),
      height: height,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (image != null)
                    Padding(
                      child: ClipOval(child: image!),
                      padding: const EdgeInsets.only(right: 10, bottom: 5, top: 5),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (label != null)
                        Text(
                          label!,
                          style: Theme.of(context).textTheme.overline,
                        ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                        softWrap: true,
                        maxLines: 2,
                      )
                    ],
                  ),
                  if (actions != null)
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: actions!,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: children,
              )),
        ],
      ),
    );
  }
}
