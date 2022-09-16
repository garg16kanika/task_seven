import 'package:flutter/material.dart';

class ListItemsDrawers extends StatelessWidget {
  final String title;
  final IconData icon;

  const ListItemsDrawers({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print('This listTile named $title was tapped');
      },
      leading: Icon(icon),
      title: Text(title),
    );
  }
}
