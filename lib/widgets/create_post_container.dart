import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

import '../models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(
                imageUrl: currentUser.imageUrl,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'what\'s on your mind'),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 1,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print('pressed'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Live'),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('pressed'),
                  icon: Icon(
                    Icons.photo,
                    color: Colors.green,
                  ),
                  label: Text('Photo'),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('pressed'),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  label: Text('Room'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
