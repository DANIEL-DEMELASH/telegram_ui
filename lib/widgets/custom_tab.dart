import 'package:flutter/material.dart';
import 'package:telegram_ui/constants.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
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
                style: const TextStyle(color: telegramDarkBlue, fontSize: 12.0),
              ),
            ),
            // )
          ],
        ),
      ),
    );
  }
}
