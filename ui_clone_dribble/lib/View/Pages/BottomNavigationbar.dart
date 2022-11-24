import 'package:flutter/material.dart';

ValueNotifier<int> valueNotifierindex = ValueNotifier(0);

class BottomNAvigation extends StatelessWidget {
  const BottomNAvigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: valueNotifierindex,
        builder: (context, int newindex, _) {
          return BottomNavigationBar(elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: const Color.fromARGB(255, 89, 89, 209),
              unselectedItemColor: Colors.grey,
              currentIndex: newindex,
              onTap: (value) {
                valueNotifierindex.value = value;
              },
              items:   const [
                BottomNavigationBarItem(icon: Icon(Icons.house_outlined,) , label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_box_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined), label: '')
              ]);
        });
  }
}