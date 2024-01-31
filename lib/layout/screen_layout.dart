import 'package:flutter/material.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController();
  int currentPage = 0;

 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: const [
            Center(
              child: Text("Profile"),
            ),
            
          ],
        ),
        bottomNavigationBar: TabBar(
            indicator: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.blue, width: 4),
              ),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
             
            ]),
      ),
    );
  }
}
