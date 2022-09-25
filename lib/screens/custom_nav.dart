import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/constants.dart';
import 'package:telegram_ui/widgets/custom_tab.dart';

class CustomNav extends StatelessWidget {
  const CustomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Telegram'),
          elevation: 0,
          backgroundColor: telegramBlue,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          bottom: const TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              // indicatorWeight: 5.0,
              indicator: ContainerTabIndicator(
                height: 7,
                color: Colors.white,
                radius: BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0)),
                padding: EdgeInsets.only(top: 23),
                // borderWidth: 2.0,
                borderColor: Colors.white,
              ),
              tabs: [
                CustomTab(
                  label: 'All',
                  num: 28,
                ),
                CustomTab(
                  label: 'Private',
                  num: 6,
                ),
                CustomTab(
                  label: 'Groups',
                  num: 8,
                ),
                CustomTab(
                  label: 'Channels',
                  num: 28,
                ),
                CustomTab(
                  label: 'Bots',
                  num: 1,
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: Colors.grey[200],
            ),
            Scaffold(
              backgroundColor: Colors.grey[200],
            ),
            Scaffold(
              backgroundColor: Colors.grey[200],
            ),
            Scaffold(
              backgroundColor: Colors.grey[200],
            ),
            Scaffold(
              backgroundColor: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
