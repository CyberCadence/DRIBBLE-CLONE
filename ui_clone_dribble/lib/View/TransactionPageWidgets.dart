 import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/Pages/HomePage.dart';

import '../constants.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: size.height*0.40,width: double.maxFinite,
      child: Stack(fit: StackFit.loose,
          alignment: Alignment.center,
          children: [
      ClipOval(
          child: Container(
        color: kButtongreydarkColor,
        padding: const EdgeInsets.all(2),
        child: ClipOval(
          child: Container(
            color: kBgColor,
            padding: const EdgeInsets.all(25),
            child: ClipOval(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(2),
                child: ClipOval(
                  child: Container(
                    color: kButtongreylightColor,
                    padding: const EdgeInsets.all(25),
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(30),
                        child: ClipOval(
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            color: Colors.purple,
                            child: ClipOval(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                child: CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.blue,
                                    child: ClipOval(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/wall.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      )),
      Positioned(
          bottom: 25,
          right: 60,
          child: ClipOval(
            child: Container(
              padding: EdgeInsets.all(2),
              color: Colors.white,
              child: ClipOval(
                child: Container(
                    width: size.width*.15,
                    height: size.height*.06,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pic2.jpg'),
                            fit: BoxFit.cover))),
              ),
            ),
          )),
      Positioned(
          bottom: 20,
          left: 70,
          child: ClipOval(
            child: Container(
              padding: const EdgeInsets.all(2),
              color: Colors.white,
              child: ClipOval(
                child: Container(
                 width: size.width*.15,
                    height: size.height*.06,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pic2.jpg'),
                            fit: BoxFit.cover))),
              ),
            ),
          )),
      Positioned(
          left: 150,
        top: 0,
          child: ClipOval(
            child: Container(
              padding: const EdgeInsets.all(2),
              color: Colors.white,
              child: ClipOval(
                child: Container(
                  width: size.width*.15,
                    height: size.height*.06,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pic2.jpg'),
                            fit: BoxFit.cover))),
              ),
            ),
          )),
      Positioned(
          right: 0,
          child: ClipOval(
            child: Container(
              padding: const EdgeInsets.all(2),
              color: Colors.white,
              child: ClipOval(
                child: Container(
                   width: size.width*.15,
                    height: size.height*.06,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pic2.jpg'),
                            fit: BoxFit.cover))),
              ),
            ),
          )),
      Positioned(
          left: 5,
          child: ClipOval(
            child: Container(
              padding: const EdgeInsets.all(2),
              color: Colors.white,
              child: ClipOval(
                child: Container(
                    width: size.width*.15,
                    height: size.height*.06,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pic2.jpg'),
                            fit: BoxFit.cover))),
              ),
            ),
          ))
          ],
        ),
    );
  }
}
//custombutton
class CustomButton extends StatelessWidget {
    CustomButton(
      {required this.textcolor,
      required this.color,
      super.key,
      required this.text});
  final String text;
  final Color color;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                  side: const BorderSide(color: kButtonBgColor)))),
      child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            text,
            style: TextStyle(color: textcolor, fontWeight: FontWeight.w800),
          )),
      onPressed: () { },
    );
  }
}


//titletext
class CustomTitleTextWIdget extends StatelessWidget {
  const CustomTitleTextWIdget(
      { this.color=kButtonBgColor,
      required this.textSize,
      super.key, this.fontWeight=FontWeight.w700,
      required this.text});
final FontWeight fontWeight;
  final String text;
  final Color color;

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: textSize),
    );
  }
}








///customcard
class CustomCard extends StatelessWidget {

    CustomCard({   this.iconborderColor=kButtongreylightColor, this.iconColor=Colors.black, super.key,required this.icon,required this.subtitleText,required this.titleText,required this.trailingText});
final IconData icon;
final String titleText;
final String subtitleText;
final String trailingText;
final Color iconColor;
final Color iconborderColor;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      
      borderRadius: BorderRadius.circular(30),
      
      color: Colors.white),
      padding: const EdgeInsets.all(5),
      child:   ListTile(leading: Container(
        padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(  color: kButtongreylightColor,borderRadius: BorderRadius.circular(15)),
        child: Icon(icon,color: iconColor,)),
      
      title: 
      CustomTitleTextWIdget(textSize: 18,fontWeight: FontWeight.w900,
     text:titleText,color: Colors.black,),
    subtitle: CustomTitleTextWIdget(textSize: 10, text: subtitleText) ,trailing: CustomTitleTextWIdget(textSize: 15,
      text: trailingText),),);
  }
}