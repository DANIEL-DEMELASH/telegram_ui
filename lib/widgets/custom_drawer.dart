import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:telegram_ui/constants.dart';
import 'package:telegram_ui/data/data.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: telegramLightBlue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage(currentUser.imageUrl),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mode_night,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  ExpansionTile(
                    iconColor: Colors.white,
                    title: Text(
                      currentUser.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      currentUser.phoneNumber,
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  )
                ],
              )),
          const ListTile(
            leading: Icon(MdiIcons.accountGroupOutline),
            title: Text('New Group'),
          ),
          const ListTile(
            leading: Icon(MdiIcons.accountOutline),
            title: Text('Contacts'),
          ),
          const ListTile(
            leading: Icon(MdiIcons.phoneOutline),
            title: Text('Calls'),
          ),
          const ListTile(
            leading: Icon(MdiIcons.naturePeople),
            title: Text('People Nearby'),
          ),
          const ListTile(
            leading: Icon(MdiIcons.bookmarkOutline),
            title: Text('Saved Messages'),
          ),
          const ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.person_add_outlined),
            title: Text('Invite Friends'),
          ),
          const ListTile(
            leading: Icon(Icons.question_mark_rounded),
            title: Text(
              'Telegram Features',
            ),
          ),
        ],
      ),
    );
  }
}
