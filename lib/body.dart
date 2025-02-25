import 'package:flutter/material.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int currentIndex = 1;
  final List<Widget> pages = [Text("Home"), Text("Profile")];

  void onClickMenu(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onClickMenu,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_tree,
                  size: 25,
                  color: Colors.greenAccent,
                ),
                label: "Tree"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_tree,
                  size: 25,
                  color: Colors.greenAccent,
                ),
                label: "Tree"),
          ]),
    );
  }
}
