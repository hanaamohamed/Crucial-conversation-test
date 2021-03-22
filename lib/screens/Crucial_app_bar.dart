import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrucialAppBar extends StatelessWidget
    implements PreferredSizeWidget, ObstructingPreferredSizeWidget {
  final String title;
  final Function onIconTapped;
  final Icon icon;

  CrucialAppBar(this.title, {this.onIconTapped, this.icon});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text(
              title,
            ),
            leading: icon != null
                ? GestureDetector(
                    child: icon,
                    onTap: onIconTapped,
                  )
                : null,
          )
        : AppBar(
            title: Text(title),
            actions: [
              icon != null
                  ? IconButton(
                      icon: icon,
                      onPressed: () => onIconTapped,
                    )
                  : null
            ],
          );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
