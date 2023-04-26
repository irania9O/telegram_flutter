import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  // const ChatListPage({Key? key}) : super(key: key);
  final int count;
  const ChatListPage({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: count,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      // 'https://avatars.githubusercontent.com/u/33866360?v=4'
                      'https://i.pravatar.cc/100?img=$index',
                    ),
                  ),
                  // truncateMode: TruncateMode.middle,
                  title: const Text(
                    'Seyed Ali Kamali Pargoo',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: const Text(
                    'Hello World!',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Column(
                    children: [
                      const Text('01:01'),
                      const SizedBox(
                        height: 10,
                      ),
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
                  )));
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
            thickness: 0.5,
            indent: 70,
            color: Colors.grey,
          );
        });
  }
}
