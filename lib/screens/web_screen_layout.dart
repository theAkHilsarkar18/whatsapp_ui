import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';
import 'package:whatsapp_ui/widgets/web_searchbar.dart';
import 'package:whatsapp_ui/widgets/web_serachbox.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.25,
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: WebSearchBar(),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: WebSearchBox(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: const ContactList(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bgimg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
