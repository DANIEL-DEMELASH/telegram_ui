import 'package:flutter/material.dart';
import 'package:telegram_ui/data/data.dart';

import '../../models/user.dart';

class AllMessages extends StatelessWidget {
  const AllMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: ((context, index) {
          final User contact = contacts[index];
          return ListTile(
            contentPadding: const EdgeInsets.only(left: 4.0),
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(contact.imageUrl),
              ),
            ),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    contact.name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      contact.lastSeen,
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                  ),
                ]),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contact.msg,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Divider()
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
