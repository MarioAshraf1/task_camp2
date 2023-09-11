
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/usersModel.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.model});
  final UserModel model;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(radius: 30, child: Text(model.number ,style: TextStyle(fontSize: 22 , color: Colors.white),),

          ),
          Padding(
            padding: const EdgeInsets.only(left:6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.name, style: TextStyle(fontSize: 20 ,color: Colors.black),),
                Text(
                  model.phone,
                  style: TextStyle(fontSize: 20 ,color: Colors.green),
                ),

              ],),
          )
        ],
      ),
    );
  }
}