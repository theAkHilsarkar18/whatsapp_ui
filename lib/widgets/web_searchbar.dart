import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.25,
      decoration: BoxDecoration(
        color: appBarColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
              radius: 20,
            ),
            Row(
              children: [
                Icon(Icons.chat,color: Colors.grey,size: 20,),
                SizedBox(width: MediaQuery.of(context).size.width*0.009,),
                Icon(Icons.settings,color: Colors.grey,size: 20,),
                SizedBox(width: MediaQuery.of(context).size.width*0.009,),
                Icon(Icons.more_vert,color: Colors.grey,size: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
