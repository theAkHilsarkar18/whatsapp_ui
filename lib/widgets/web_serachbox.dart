import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';

class WebSearchBox extends StatelessWidget {
  const WebSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.sizeOf(context).width*0.21,
            decoration: BoxDecoration(
              color: appBarColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            child: Icon(Icons.search,color: Colors.grey,size: 22),
          ),
          Icon(Icons.menu_open,size: 24,color: Colors.grey,)
        ],
      ),
    );
  }
}
