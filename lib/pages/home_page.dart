import 'package:flutter/material.dart';
import 'package:instagram/pages/post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? currentIndex=0;
  final List _pages  = const  [
   PostPage(),
   PostPage(),
   PostPage(),
   PostPage(),
   PostPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Divider(color: Colors.grey,thickness: 0.3,),
            BottomNavigationBar(
              currentIndex: currentIndex!,
              onTap: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              selectedIconTheme: const IconThemeData(size: 38),
              unselectedIconTheme: const IconThemeData(size: 30),
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.white,),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.live_tv_rounded,color: Colors.white,),label:""),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,color: Colors.white,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,color: Colors.white,),label: ""),
            ]),
          ],
        
        ),
      ),
      body: _pages[currentIndex!],
    );
  }
}