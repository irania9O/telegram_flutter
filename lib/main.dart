import 'package:flutter/material.dart';
import 'package:telegram/screens/chat_list.dart';
import 'package:telegram/screens/new_message.dart';
import 'package:telegram/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        themeMode: ThemeMode.light,
        // themeMode: ThemeMode.system,
        home: const DefaultTabController(
          length: 5,
          child: MainPage(),
        ),
        routes: {
          '/new_message': (context) => const NewMessagePage(),
          '/search': (context) => const SearchPage(),
        });
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              title: const Text("Telegram"),
              toolbarHeight: 60,
              // expandedHeight: 0,
              // collapsedHeight: 0,
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
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(fontSize: 16),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ],
          body: const TabBarView(
            children: [
              ChatListPage(count: 20),
              ChatListPage(count: 5),
              ChatListPage(count: 10),
              ChatListPage(count: 2),
              ChatListPage(count: 10),
            ],
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName:
                Text('Seyed Ali Kamali Pargoo', style: TextStyle(fontSize: 16)),
            accountEmail: Text('+98936*****99', style: TextStyle(fontSize: 12)),
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
        onPressed: () {
          Navigator.pushNamed(context, '/new_message');
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
