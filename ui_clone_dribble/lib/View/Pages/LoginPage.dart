import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/TransactionPageWidgets.dart';
import 'package:ui_clone_dribble/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
   children: [CircleAvatar(backgroundColor: kButtonBgColor,)
   
   
   ,Container(
      
      padding: EdgeInsets.all(15),
      width: size.width,height: size.height*.11,decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CustomTitleTextWIdget
      (textSize: 15,
       text: 'Email Address',fontWeight: FontWeight.w400,color: Colors.grey,),
       
       kheight10,
      Row(children: const [ Icon(Icons.mail_outline_sharp),kwidth10,
       CustomTitleTextWIdget
      (textSize: 18,
       text: 'Username@gmail.com',fontWeight: FontWeight.w300,color: Colors.black,)],)],),)

   ,kheight20,
   Container(
      
      padding: EdgeInsets.all(15),
      width: size.width,height: size.height*.11,decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CustomTitleTextWIdget
      (textSize: 15,
       text: 'Password',fontWeight: FontWeight.w300,color: Colors.grey,),
       
       kheight10,
      Row(children: const [ Icon(Icons.mail_outline_sharp),kwidth10,
       CustomTitleTextWIdget
      (textSize: 18,
       text: '..............',fontWeight: FontWeight.bold,color: Colors.black,)
       ,Spacer(),Icon(Icons.remove_red_eye,color: Colors.grey,)
       ],)
       
       ,],),),kheight20,Container(
      
        width: size.width,height: size.height*.06,
         child: CustomButton(
          
          textcolor: Colors.white, color: kButtonBgColor, 
         text: 'Login'),
       ),kheight20,Row(
         children: [
           CustomTitleTextWIdget(textSize: 10, text: 'Signup' ,),
         Spacer(),CustomTitleTextWIdget(textSize: 10, text: 'Forgot Password')],
       )],),
    ));
  }
}