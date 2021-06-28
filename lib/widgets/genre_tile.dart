import 'package:flutter/material.dart';

class GenreTile extends StatelessWidget {
  const GenreTile(
      {Key? key, required this.color, required this.text, this.image})
      : super(key: key);

  final Color color;
  final String text;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              alignment: Alignment.topLeft,
            ),
            if (image != null)
              RotationTransition(
                  turns: AlwaysStoppedAnimation(25 / 360),
                  alignment: Alignment(-0.25, 1),
                  child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.3),
                          spreadRadius: 0,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ]),
                      child: image))
          ],
        ),
      ),
    );
  }
}
