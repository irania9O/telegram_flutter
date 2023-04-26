import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // int _selectedIndex = 0;
  // final dynamic _pages = [
  //   const Text('Home'),
  //   const Text('Table'),
  //   const Text('News'),
  //   const Text('About'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Telegram"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'all',
              ),
              Tab(
                text: 'contacts',
              ),
              Tab(
                text: 'groups',
              ),
              Tab(
                text: 'channels',
              ),
              Tab(
                text: 'bots',
              ),
            ],
            isScrollable: true,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            automaticIndicatorColorAdjustment: true,
            // padding: EdgeInsets.only(bottom: 20),
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            // indicatorPadding: EdgeInsets.only(bottom: 20),
            // overlayColor: MaterialStateProperty.all(Colors.red),
            labelStyle: TextStyle(fontSize: 16),
            // dragStartBehavior: DragStartBehavior.start,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Seyed Ali Kamali Pargoo',
                  style: TextStyle(fontSize: 16)),
              accountEmail:
                  Text('+98936*****99', style: TextStyle(fontSize: 12)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/33866360?v=4'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/33866360?v=4'),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Manage accounts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 5,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('New Group'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Contacts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Calls'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Saved Messages'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 5,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Invite Friends'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Telegram FAQ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(PhosphorIcons.fill.pencil),
        ),
        body: const TabBarView(
          children: [
            Text('all'),
            Text('contacts'),
            Text('groups'),
            Text('channels'),
            Text('bots'),
          ],
        ));
  }
}
