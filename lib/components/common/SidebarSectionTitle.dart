import 'package:flutter/material.dart';

class SidebarSectionTitle extends StatelessWidget {
  final String title;
  const SidebarSectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style : Theme.of(context).textTheme.headline6);
  }
}
