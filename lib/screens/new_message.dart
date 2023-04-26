import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NewMessagePage extends StatelessWidget {
  const NewMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            title: Row(
              children: const [
                // CircleAvatar(
                //   backgroundImage: NetworkImage(
                //       'https://avatars.githubusercontent.com/u/33866360?v=4'),
                // ),
                SizedBox(
                  width: 10,
                ),
                Text("New Message"),
              ],
            ),
            toolbarHeight: 60,
            // expandedHeight: 0,
            // collapsedHeight: 0,
            floating: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(PhosphorIcons.fill.sortAscending),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ListTile(
                  leading: Icon(Icons.group),
                  title: Text('New Group'),
                ),
                const ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('New Secret Chat'),
                ),
                const ListTile(
                  leading: Icon(Icons.campaign_sharp),
                  title: Text('New Channel'),
                ),
              ],
            ),
          ),

          // sliver Container with text sort by
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
              child: const Text(
                'Sorted by last seen time',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          // sliver divide
        ],
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/33866360?v=4'),
            ),
            title: Text('Seyed Ali Kamali Pargoo'),
            subtitle: Text('last seen recently'),
            // trailing: const Icon(Icons.check_circle),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
