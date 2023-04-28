import 'dart:math';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  // const ChatListPage({Key? key}) : super(key: key);
  final int count;
  const ChatListPage({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int randomInt = Random().nextInt(20);

    return CustomScrollView(
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
                  trailing: Column(
                    children: [
                      const SizedBox(height: 4),
                      Text(
                        '01:01',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 6),
                      CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.green[700],
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: const Text('Seyed Ali Kamali Pargoo'),
                  subtitle: const Text('last message'),
                ),
                const Divider(
                  height: 1,
                  thickness: 0.5,
                  indent: 80,
                  color: Colors.grey,
                ),
              ],
            ),
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
