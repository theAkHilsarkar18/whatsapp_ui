import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp", style: TextStyle(color: textColor)),
          backgroundColor: appBarColor,
          actions: const [
            Icon(Icons.search, color: textColor),
            Icon(Icons.more_vert, color: textColor),
          ],
          elevation: 0,
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicatorWeight: 3,
              labelStyle:
                  TextStyle(color: textColor, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              labelColor: tabColor,
              indicatorColor: tabColor,
              tabs: [
                Tab(
                  child: Text('CHAT'),
                ),
                Tab(
                  child: Text(
                    'STATUS',
                  ),
                ),
                Tab(
                  child: Text('CALLS'),
                ),
              ]),
        ),
        body: const ContactList(),
      ),
    );
  }
}
