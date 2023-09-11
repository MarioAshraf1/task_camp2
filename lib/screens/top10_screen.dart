
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/usersModel.dart';
import 'package:task_camp2/screens/homeScreen.dart';
import 'package:task_camp2/widgets/userItem.dart';

class Top10Screen extends StatelessWidget {
  const Top10Screen({super.key});

  final List<UserModel> userList = const [
    UserModel(number: "1", name: "Mariam Wael", phone: "0123456789",),
    UserModel(number: "2", name: "Mario Ashraf", phone: "01023785398",),
    UserModel(number: "3", name: "karol Hany", phone: "01175559923",),
    UserModel(number: "4", name: "Mera Refaat", phone: "01089537294",),
    UserModel(number: "5", name: "Omar Khaled ", phone: "01287349503",),
    UserModel(number: "6", name: "Marina Emad", phone: "01287430054",),
    UserModel(number: "7", name: "Alaa mohamed", phone: "01076302278",),
    UserModel(number: "8", name: "Kyrillos Ayman", phone: "0113908473",),
    UserModel(number: "9", name: "Islam Hassan", phone: "01087239902",),
    UserModel(number: "10", name: "Mariam Bassem", phone: "012438294400"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [Image.asset('assets/images/5553769.png', scale: 6,)],
          centerTitle: true,
          flexibleSpace: Container(

            decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Colors.red, Colors.deepPurple])),
          ),
          title: Text('Users Screen'),
        ),
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var currentUser = userList[index];
            return TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) {
                  return ProfileScreen(
                    name: currentUser.name, cardTitle: currentUser.phone,);
                }));
              },
              child: UserItem(
                model: userList[index],
              ),
            );
          },
          itemCount: userList.length,
          separatorBuilder: (context, index) =>
              Divider(thickness: 2, indent: 20, endIndent: 20,),
        ));
  }
}