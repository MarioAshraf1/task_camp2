
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/TextFieldModel.dart';
import 'package:task_camp2/screens/signUpScreen.dart';
import 'package:task_camp2/screens/top10_screen.dart';
import 'package:task_camp2/widgets/textFieldWidget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
final List<TextFieldModel> textList =const [
  TextFieldModel(text: 'Email'),
  TextFieldModel(text: 'Password'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen' , style: TextStyle(color: Colors.black87),),),
  body: Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(flex: 1,),
        Text('Login',style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),


        Expanded(child: ListView.builder(
            itemCount: textList.length,
            itemBuilder: (context ,index) {
          return  TextFieldWidget(fieldModel: textList[index]);
        })),


        Container(
          height: 40,
          width: double.infinity,
          child: ElevatedButton(

              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Top10Screen();} ));}, child: Text('Login' ,style: TextStyle(color: Colors.white),)),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an acount? "),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));}, child: Text('Register now' ,style: TextStyle(color: Colors.pinkAccent),))
          ],),
        Spacer(flex:1 ,)
      ],
    ),
  ),
    );
  }
}
