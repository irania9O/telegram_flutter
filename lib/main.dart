import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
      home: const MyHomePage(title: 'Telegram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                      'https://avatars.githubusercontent..com/u/33866360?v=4'),
                  fit: BoxFit.cover),
            ),
            // otherAccountsPicturesSize: Size(48, 48),
            // otherAccountsPictures: [
            //   // On press of this icon you can navigate to another page
            //   BackButton(
            //     // onPressed: () {},
            //     color: Colors.white,
            //   ),
            // ],
          ),
          // ListTile(
          //   leading: Icon(Icons.add),
          //   title: Text('Add account'),
          // ),
          // Divider(
          //   height: 5,
          //   thickness: 1,
          //   color: Colors.grey,
          //   // endIndent: 20,
          //   // indent: 20,
          // ),
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
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(PhosphorIcons.fill.pencil),
      ),
    );
  }
}
