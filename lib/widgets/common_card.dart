
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/common_title_card.dart';
class CommonCardWidget extends StatelessWidget {
  const CommonCardWidget({super.key, required this.commonTitle});
 final CommonTitle commonTitle;
  @override
  Widget build(BuildContext context) {
    return
      Card(
        margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
        child: ListTile(
          leading: commonTitle.icon,
          title: Text( commonTitle.title,
            style: TextStyle(
              color: Color(0xFF00BCD4),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

      );
  }
}
