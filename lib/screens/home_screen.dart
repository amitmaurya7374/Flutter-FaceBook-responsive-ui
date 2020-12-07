import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';

import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: const Text(
              'Facebook',
              style: const TextStyle(
                fontSize: 28.0,
                letterSpacing: -1.2,
                fontWeight: FontWeight.bold,
                color: Palette.facebookBlue,
              ),
            ),
            actions: [
              AppBarIcon(
                iconData: Icons.search,
                iconSize: 26.0,
                onPress: () => print('search icon pressed'),
              ),
              AppBarIcon(
                iconData: MdiIcons.facebookMessenger,
                iconSize: 26.0,
                onPress: () => print('facebook messenger'),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currentUser: currentUser,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUser: onlineUsers),
            ),
          )
        ],
      ), //this create a custom scroll effect and take slivers
    );
  }
}
