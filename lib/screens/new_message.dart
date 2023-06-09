import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class NewMessagePage extends StatelessWidget {
  const NewMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int randomInt = Random().nextInt(20);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            title: const Text("New Message"),
            toolbarHeight: 60,
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
                icon: const Icon(Icons.sort),
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
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              height: 35,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: const Text(
                'Sorted by last seen time',
              ),
            ),
          ),
        ],
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/100?img=${index + randomInt}',
                          // 'https://avatars.githubusercontent.com/u/33866360?v=4'
                        ),
                      ),
                      title: Text(faker.person.name()),
                      subtitle: const Text('last seen recently'),
                    ),
                  ],
                ),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SizedBox(
              height: height / 1.5,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: ListTile(
                      title: Text(
                        'New Contact',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'First Name',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12, right: 15),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(width - 40, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Create Contact'),
                  ),
                ],
              ),
            ),
          );
        },
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
