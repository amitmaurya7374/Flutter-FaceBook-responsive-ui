import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  final double iconSize;
  const AppBarIcon({
    Key key,
    @required this.iconData,
    @required this.iconSize,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: Icon(
          iconData,
          size: 30,
          color: Colors.black,
        ),
        onPressed: onPress,
      ),
    );
  }
}
