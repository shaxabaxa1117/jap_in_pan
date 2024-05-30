
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jap_in_pan/style/my_color_style.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
    backgroundColor: MyColors.lakeBlue,
    );
  }
}
