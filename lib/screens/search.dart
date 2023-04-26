import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 60,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              title: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Media',
                  ),
                  Tab(
                    text: 'Downloads',
                  ),
                  Tab(
                    text: 'Links',
                  ),
                  Tab(
                    text: 'Files',
                  ),
                  Tab(
                    text: 'Music',
                  ),
                  Tab(
                    text: 'Voice',
                  ),
                ],
                isScrollable: true,
                indicatorColor: Colors.blue,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ],
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Container(
                      width: 100,
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/100?img=$index',
                              // 'https://avatars.githubusercontent.com/u/33866360?v=4'
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('name'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                    ),
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.only(
                        left: 15, top: 10, bottom: 10, right: 15),
                    child: Row(
                      children: const [
                        Text(
                          'Recent',
                          textAlign: TextAlign.start,
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Clear All',
                          ),
                        ),
                      ],
                    )),
              ),
              // with separator
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://i.pravatar.cc/100?img=$index',
                            // 'https://avatars.githubusercontent.com/u/33866360?v=4'
                          ),
                        ),
                        title: const Text('Seyed Ali Kamali Pargoo'),
                        subtitle: const Text('public channel'),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 0.5,
                        indent: 70,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  childCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
