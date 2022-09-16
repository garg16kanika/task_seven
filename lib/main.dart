import 'package:flutter/material.dart';
import './toast_messenger.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'task_seven',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Seven'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/3377405/pexels-photo-3377405.jpeg?cs=srgb&dl=pexels-el%C4%ABna-ar%C4%81ja-3377405.jpg&fm=jpg'))),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media1.popsugar-assets.com/files/thumbor/hnVKqXE-xPM5bi3w8RQLqFCDw_E/475x60:1974x1559/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/09/09/023/n/1922398/9f849ffa5d76e13d154137.01128738_/i/Taylor-Swift.jpg'),
              ),
              accountName: Text('Pratap Kumar'),
              accountEmail: Text('kpratap23@gmail.com'),
            ),
            ListItemsDrawers(title: 'Music', icon: Icons.library_music),
            ListItemsDrawers(title: 'Movies', icon: Icons.movie),
            ListItemsDrawers(title: 'Shopping', icon: Icons.shopping_cart),
            ListItemsDrawers(title: 'Apps', icon: Icons.apps),
            ListItemsDrawers(title: 'Docs', icon: Icons.document_scanner),
            ListItemsDrawers(title: 'Settings', icon: Icons.settings),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListItemsDrawers(title: 'About', icon: Icons.info),
            ListItemsDrawers(title: 'Logout', icon: Icons.logout),
          ],
        ),
      ),
      body: const Center(
        child: Text('open the Drawer'),
      ),
    );
  }
}
