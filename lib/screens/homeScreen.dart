
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/common_title_card.dart';
import 'package:task_camp2/screens/signInScreen.dart';
import 'package:task_camp2/widgets/cardWidget.dart';
import 'package:task_camp2/widgets/common_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ super.key,required this.name , required this.cardTitle });
final String name;
final String cardTitle;
   final List <CommonTitle> commonTitleList=const[
     CommonTitle(icon: Icon(Icons.link ,color: Colors.black,), title: 'http//:Linkedin@Example.com'),
     CommonTitle(icon: Icon(Icons.place,color: Colors.black,), title: 'Atomika'),
   ];

  @override
  Widget build(BuildContext context) {
    return (
     Scaffold(
       appBar: AppBar(backgroundColor: Colors.transparent,
       elevation: 0,
       ),
          backgroundColor: Colors.cyan,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundColor: Color(0xFFF8EBFF),
                child: Icon(Icons.person ,color: Color(0xFF2A0468) , size: 100,),
                radius: 80,
              ),
              Text(name,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              Text('Flutter Developer',
                style: TextStyle(
                  color: Color(0xFFCEF3EF),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CardItem(cardTitle: cardTitle),

              Expanded(child: ListView.builder(
                itemCount: commonTitleList.length,
                itemBuilder: (context , index) {

                  return CommonCardWidget(commonTitle:commonTitleList[index], );
                },
              ),
              ),

              ElevatedButton(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();} ));}, child: Text('Log out')),
              SizedBox(height: 100,)
            ],
          ),
        )

    );
  }
}
