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
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Flutter'),
            accountEmail: Text('AS'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/19484515?v=4'),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/180930?v=4'),
                  fit: BoxFit.cover),
            ),
            otherAccountsPictures: [
              // On press of this icon you can navigate to another page
              BackButton(
                // onPressed: () {},
                color: Colors.white,
              )
            ],
          ),
          // ListTile(
          //   leading: Icon(Icons.message),
          //   title: Text('Messages'),
          // ),
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
