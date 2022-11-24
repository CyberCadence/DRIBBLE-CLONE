import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/Pages/HomePage.dart';
import 'package:ui_clone_dribble/View/TransactionPageWidgets.dart';
import 'package:ui_clone_dribble/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
       children: [
      
     
      Container(width: size.width*.4,padding: const EdgeInsets.only(left: 20,right: 20),
         height: size.height*0.35,
        child: const CircleAvatar(backgroundColor: kButtonBgColor,radius: 30,child: Icon(
          Icons.house_outlined,color: Colors.white,size: 60),))
       
       
       ,Container(
        
        padding: const EdgeInsets.all(15),
        width: size.width,height: size.height*.11,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const CustomTitleTextWIdget
        (textSize: 15,
         text: 'Email Address',fontWeight: FontWeight.w400,color: Colors.grey,),
         
         kheight10,
        Row(children: const [ Icon(Icons.mail_outline_sharp),kwidth10,
         CustomTitleTextWIdget
        (textSize: 18,
         text: 'Username@gmail.com',fontWeight: FontWeight.w300,color: Colors.black,)],)],),)
    
       ,kheight20,
       Container(
        
        padding: const EdgeInsets.all(15),
        width: size.width,height: size.height*.11,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const CustomTitleTextWIdget
        (textSize: 15,
         text: 'Password',fontWeight: FontWeight.w300,color: Colors.grey,),
         
         kheight10,
        Row(children: const [ Icon(Icons.mail_outline_sharp),kwidth10,
         CustomTitleTextWIdget
        (textSize: 18,
         text: '..............',
         fontWeight: FontWeight.bold,color: Colors.black,)
         ,Spacer(),Icon(Icons.remove_red_eye,color: Colors.black45,)
         ],)
         
         ,],),),kheight20,
         
         
      Container(width: size.width,height: size.height*.06,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kButtonBgColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      side: const BorderSide(color: kButtonBgColor)))),
          
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
          onPressed: () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
    
          },
        ),
      ),
      
      
      kheight20,Row(
           children: const [kwidth20,
          
          
          
             CustomTitleTextWIdget(textSize: 10, text: 'Signup' ,),
           Spacer(),CustomTitleTextWIdget(textSize: 10, text: 'Forgot Password ?'),kwidth20],
         )
         
         
         ,],),
      )),
    );
  }
}