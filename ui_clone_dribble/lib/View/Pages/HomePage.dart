import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/Pages/BottomNavigationbar.dart';
import 'package:ui_clone_dribble/View/Pages/LoginPage.dart';
import 'package:ui_clone_dribble/View/Pages/recentTransactionsPage.dart';
import 'package:ui_clone_dribble/View/TransactionPageWidgets.dart';
import 'package:ui_clone_dribble/constants.dart';





 









class HomePage extends StatelessWidget {
    HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView.separated(itemBuilder: (context, index) => widgets[index],
            itemCount: widgets.length,separatorBuilder: (context, index) => kheight20,
             
            )),
    bottomNavigationBar: BottomNAvigation(),  );
    
  }
final widgets=[TopContainer(),CenterWidget(),CustomCardList()];


}








//Topcontainer
class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const[BoxShadow(blurStyle: BlurStyle.outer)],
          borderRadius: BorderRadius.circular(20)),
      height: size.height * .43,
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children:   [
                IconButton(icon: const Icon(Icons.arrow_back),onPressed:()=>
                Navigator.pop(context) ),
                const Spacer(),
                IconButton(icon: const Icon(Icons.arrow_right_alt),onPressed:()=>
                Navigator.push(context, MaterialPageRoute(builder: (context) => RecentTransactionPage(),)) )
              ],
            ),
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/pic2.jpg'),
          ),
          kheight20,
          const CustomTitleTextWIdget(
            textSize: 25,
            text: 'Hira Riaz',
            fontWeight: FontWeight.bold,
          ),
          kheight20,
          const CustomTitleTextWIdget(
            textSize: 10,
            text: 'UX/UI Designer',
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomExpenseWidget(
                amount: '₹8900',
                categoryText: 'Income',
              ),
              SizedBox(
                width: 30,
              ),
              CustomExpenseWidget(amount: '₹5500', categoryText: 'Expenses'),
              SizedBox(
                width: 30,
              ),
              CustomExpenseWidget(amount: '₹890', categoryText: 'Loan'),
            ],
          )
        ],
      ),
    );
  }
}

class CustomExpenseWidget extends StatelessWidget {
  const CustomExpenseWidget({
    required this.amount,
    required this.categoryText,
    Key? key,
  }) : super(key: key);

  final String amount;
  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitleTextWIdget(
            textSize: 18, fontWeight: FontWeight.w500, text: amount),
        kheight10,
        CustomTitleTextWIdget(
          textSize: 10,
          text: categoryText,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}

//centerwidget
class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CustomTitleTextWIdget(textSize: 26, text: 'Overview'),
        kwidth10,
        Icon(
          Icons.notification_add_outlined,
        ),
        Spacer(),
        CustomTitleTextWIdget(
          textSize: 12,
          text: 'SEPT 13,2020',
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}












//bottomcardlist
class CustomCardList extends StatelessWidget {
  const CustomCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(icon: Icons.arrow_upward,
         subtitleText: 'Sending payment to clients',
        titleText: 'Sent',
         trailingText: '150'), kheight10, CustomCard(icon: Icons.arrow_downward,
         subtitleText: 'Receiving Salary from company',
        titleText: 'Receive',
         trailingText: '250'), kheight10, CustomCard(icon: Icons.monetization_on_outlined,
         subtitleText: 'Loan for the car',
        titleText: 'Loan',
         trailingText: '400')
      ],
    );
}}