import 'package:flutter/material.dart';
class CardItem extends StatelessWidget {
  const CardItem({super.key,required this.cardTitle, });

final String cardTitle;
  @override
  Widget build(BuildContext context) {
    return
    Card(
      margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
      child: ListTile(
        leading:const Icon(Icons.phone ,color: Colors.black,),
        title: Text( cardTitle,
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
