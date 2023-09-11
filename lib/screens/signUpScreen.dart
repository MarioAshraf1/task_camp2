
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/TextFieldModel.dart';
import 'package:task_camp2/screens/signInScreen.dart';
import 'package:task_camp2/screens/top10_screen.dart';
import 'package:task_camp2/widgets/textFieldWidget.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  final List<TextFieldModel> textList =const [
    TextFieldModel(text: 'UserName'),
    TextFieldModel(text: 'Email'),
    TextFieldModel(text: 'password'),
    TextFieldModel(text: 'Confirm Password'),

  ];

  @override
  Widget build(BuildContext context) {
    return (
    Scaffold(
appBar: AppBar(title: Text('Sign Up Screen', style: TextStyle(color: Colors.black87),),),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8,),
            Text('Sign Up' ,style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),

            Expanded(child: ListView.builder(
                itemCount: textList.length,
                itemBuilder: (context ,index) {
              return  TextFieldWidget(fieldModel: textList[index]);
            })),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(

                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Top10Screen();} ));}, child: Text('Sign Up' ,style: TextStyle(color: Colors.white),)),
            ),
SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text('Already have an account?' ,style: TextStyle(color: Colors.blue),),
              TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();} ));}, child: Text('Login', style: TextStyle(color: Colors.purple),))],),
            Spacer(flex: 1,)
          ],
        ),
      ),
    )
    );
  }
}
