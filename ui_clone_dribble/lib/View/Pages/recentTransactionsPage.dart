import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/TransactionPageWidgets.dart';
import 'package:ui_clone_dribble/constants.dart';






class RecentTransactionPage extends StatelessWidget {
  const RecentTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.black))],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(
              children: const [
                CustomTitleTextWIdget(textSize: 22, text: 'Recent Transactions'),
               Spacer(),
             Text('See all',style: TextStyle(fontSize: 15),)],
            ),   kheight20,
              Row(
                children: const [
                  CustomButton(
                      text: 'All',
                      textcolor: Colors.white,
                      color: kButtonBgColor),
                  kwidth10,
                  CustomButton(
                    textcolor: Colors.black,
                    text: 'Income',
                    color: kBgColor,
                  ),
                  kwidth10,
                  CustomButton(
                      textcolor: Colors.black, color: kBgColor, text: 'Expense')
                ],
              ),kheight20,
          const CustomTitleTextWIdget(textSize: 20, text: 'Today'), kheight20
          ,CustomCard(icon: Icons.email,titleText: 'Payment',
          subtitleText: 'Payment from Andrea',trailingText: '30.00',), kheight20
            ,CircleWidget(size: size) ,const SizedBox(height: 40,),  
             SizedBox(width: double.maxFinite,height: size.height*.06,
              child: const CustomButton(textcolor: Colors.white, color: kButtonBgColor,
               text: 'See details'),
            )],
          ),
        ),
      )),
    );
  }
}


//circlewidget middle area widget

