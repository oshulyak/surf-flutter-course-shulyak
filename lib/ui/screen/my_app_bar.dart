import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;
  final Color backgroundColor;
  final Color shadowColor;
  final Widget title;
  final List<Widget> actions;

  final Size preferredSize; 

  MyAppBar({
    this.toolbarHeight,
    this.backgroundColor,
    this.shadowColor,
    this.title,
    this.actions,
  }) : preferredSize = Size(double.infinity, toolbarHeight);

  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: this.title,
      ),
    );
  }
}
