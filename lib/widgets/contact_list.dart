import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/utils/data.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            onTap: () {
              // on tap click
            },
            shape: const Border(bottom: BorderSide(color: dividerColor,width: 0.5)),
            title: Text(
              info[index]['name'].toString(),
              style: const TextStyle(
                fontSize: 18,
                color: textColor,
              ),
            ),
            subtitle: Text(
              info[index]['message'].toString(),
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(info[index]['profilePic'].toString()),
              radius: 40,
            ),
            trailing: Text(
              info[index]['time'].toString(),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
