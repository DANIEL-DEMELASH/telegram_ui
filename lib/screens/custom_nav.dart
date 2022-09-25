import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/constants.dart';

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
                _CustomTab(
                  label: 'All',
                  num: 28,
                ),
                _CustomTab(
                  label: 'Private',
                  num: 6,
                ),
                _CustomTab(
                  label: 'Groups',
                  num: 8,
                ),
                _CustomTab(
                  label: 'Channels',
                  num: 28,
                ),
                _CustomTab(
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

class _CustomTab extends StatelessWidget {
  const _CustomTab({
    Key? key,
    required this.label,
    required this.num,
  }) : super(key: key);

  final String label;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label),
            const SizedBox(
              width: 2,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Text(
                '$num',
                style: const TextStyle(color: telegramBlue, fontSize: 12.0),
              ),
            ),
            // )
          ],
        ),
      ),
    );
  }
}
