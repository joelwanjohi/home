import 'package:flutter/material.dart';
import 'package:home/pages/dashboard.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
             DrawerHeader(
                 decoration: BoxDecoration(
                  
                    color: Colors.blue,
                    
                  ),
                  child:Column(
                    children: [
                      SizedBox(
                        height: 20,
                      child: Text(
                        'Online Exams',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                ),
                    ],
                  ),
             ),
            ListTile(
              leading: const  Icon(Icons.home),
              title: const Text('Dashboard'),
              onTap:  () => Navigator.push(context, MaterialPageRoute(builder:  (context)=> const DashboardPage())),
            ),
             ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Exams'),
              onTap: () =>  print('Exam tappped'),
             ),
              ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text('Candidates'),
              onTap: () => print('Add canditates tappped'),
              ),
                  ListTile(
              leading: const Icon(Icons.question_answer_sharp),
              title: const Text('Questions'),
              onTap: () => print('question tappped'),
        ),
            ListTile(
              leading: const Icon(Icons.query_stats_outlined),
              title: const Text('Statistics'),
              onTap: () => print('statistics tappped'),
        ),
            ListTile(
              leading: const Icon(Icons.notifications_active_sharp),
              title: const Text('Notification'),
              onTap: () => print('notification tappped'),
        ),
             const Divider(),
               ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => print('setting tappped'),
      ),
       ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out'),
              onTap: () => print('sign out tappped'),
       ),
           ListTile(
              leading: Icon(Icons.help),
              title: const Text('Help & Support'),
              onTap: () => print('help & support tappped'),
        ),
    
      ]
          ),
          
    );
  
  }
}
