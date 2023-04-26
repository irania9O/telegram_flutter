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
          return const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/33866360?v=4'),
                ),
                // truncateMode: TruncateMode.middle,
                title: Text(
                  'Seyed Ali Kamali Pargoo',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Hello World!',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text('18:00'),
              ));
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
