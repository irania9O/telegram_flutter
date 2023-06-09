import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int randomInt = Random().nextInt(20);
    int randomInt2 = Random().nextInt(20);

    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 60,
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
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Container(
                      width: 80,
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/100?img=${index + randomInt}',
                              // 'https://avatars.githubusercontent.com/u/33866360?v=4'
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            faker.person.firstName(),
                            overflow: TextOverflow.ellipsis,
                          ),
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
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.only(
                        left: 15, top: 10, bottom: 10, right: 15),
                    child: Row(
                      children: [
                        const Text(
                          'Recent',
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Clear All',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
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
                            'https://i.pravatar.cc/100?img=${index + randomInt2}',
                            // 'https://avatars.githubusercontent.com/u/33866360?v=4'
                          ),
                        ),
                        title: Text(faker.person.name()),
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
