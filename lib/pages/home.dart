import 'package:flutter/material.dart';
import 'package:home/utils/navbar.dart';
// Replace 'path_to_search_bar.dart' with the actual path


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController =PageController();
  TextEditingController searchController = TextEditingController();
  int currentPage =0;
  @override
  void dispose() {
    pageController.dispose();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          'Online Exams',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: SafeArea(
          child: ListView(
              children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: <Widget>[
                  const Text(
                    "Welcome back! 👋",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  //  decoration: InputDecoration(
                  //         border: InputBorder.none,
                  //         prefixIcon: Icon(
                  //           Icons.search,
                  //           color: Colors.black87,
                  //         ),
                  //         hintText: "Search you're looking for",
                  //         hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  SearchBar(
                    hintText: "Search you're looking for",
                    controller: searchController,
                    leading: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 5.0, left: 10, right: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New exams",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 125,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]
                  ),
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      top: 3,
                      left: 3,
                      right: 3,
                      child: Container(
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          image: DecorationImage(
                            image: AssetImage('lib/images/physics1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0.5,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Physics P1",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 3,
                                              width: 2,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(children: <Widget>[
                                      Icon(
                                        Icons.people,
                                        size: 15,
                                        color: Colors.black87,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '40',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ]),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
          
 
            
  
          
                  ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
              const SizedBox(
              height: 7,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 5.0, left: 10, right: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Exams",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 125,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]
                  ),
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      top: 3,
                      left: 3,
                      right: 3,
                      child: Container(
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          image: DecorationImage(
                            image: AssetImage("lib/images/chemp3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.5,
                      left: 0.5,
                      right: 0.5,
                      child: Container(
                        padding: const EdgeInsets.all(7.0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Chemistry P3",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 3,
                                              width: 2,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(children: <Widget>[
                                      Icon(
                                        Icons.people,
                                        size: 15,
                                        color: Colors.black87,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '97',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ]),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

          
 
            
  
          
                  ),
                  );
                },
              ),
            ),
          
              ],
          ),
          
      ),
            
    );
  }
}
