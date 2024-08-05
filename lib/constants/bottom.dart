
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/chat_view.dart';
import '../pages/home2.dart';
import '../pages/post_view.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  int _selectedIndex = 0;
  List<Widget> bottomlist = [
    Home2(),
    Chat(),
    Post(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(

        index: 0,
        items: [
          CurvedNavigationBarItem(child:
          Icon(Icons.home_outlined),label:"Home",labelStyle: TextStyle(
            fontSize: 14.sp,fontWeight: FontWeight.w600,fontFamily: "Figtree",color: Color(0xFF000000)
          )
          ),
          CurvedNavigationBarItem(child: Icon(CupertinoIcons.chat_bubble_text),label: "Chat",
              labelStyle: TextStyle(
                  fontSize: 14.sp,fontWeight: FontWeight.w600,fontFamily: "Figtree",color: Color(0xFF000000)
              )),
          CurvedNavigationBarItem(child: Icon(Icons.bookmark_border_rounded),label: "Post",
              labelStyle: TextStyle(
                  fontSize: 14.sp,fontWeight: FontWeight.w600,fontFamily: "Figtree",color: Color(0xFF000000)
              ))


        ],
        color: Colors.orangeAccent,
        buttonBackgroundColor: Colors.orangeAccent,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: bottomlist.elementAt(_selectedIndex),
      ),





    );
  }
}

// initialActiveIndex: _selectedIndex,
// onTap: _onItemTapped ,
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class Bottom extends StatefulWidget {
//   @override
//   _BottomState createState() => _BottomState();
// }
//
// class _BottomState extends State<Bottom> {
//   int _currentIndex = 0;
//
//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80.h,
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           CustomPaint(
//             size: Size(MediaQuery.of(context).size.width, 80.h),
//             painter: BNBCustomPainter(),
//           ),
//           BottomNavigationBar(
//             onTap: onTabTapped,
//             currentIndex: _currentIndex,
//             backgroundColor: Colors.transparent,
//             selectedItemColor: Colors.black,
//             unselectedItemColor: Colors.black54,
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.chat_bubble_outline),
//                 label: 'Chat',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.bookmark_border),
//                 label: 'Post',
//               ),
//             ],
//             showUnselectedLabels: true,
//             type: BottomNavigationBarType.fixed,
//           ),
//           Positioned(
//             top: -30.h,
//             left: MediaQuery.of(context).size.width / 3 - 30.w,
//             child: GestureDetector(
//               onTap: () => onTabTapped(1),
//               child: CircleAvatar(
//                 backgroundColor: Colors.orangeAccent,
//                 radius: 30.w,
//                 child: Icon(Icons.home, size: 30.sp, color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class BNBCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.orangeAccent
//       ..style = PaintingStyle.fill;
//
//     Path path = Path()
//       ..moveTo(0, 20.h)
//       ..lineTo(size.width * 0.3, 20.h)
//       ..quadraticBezierTo(size.width * 0.35, 20.h, size.width * 0.38, 0)
//       ..quadraticBezierTo(size.width * 0.4, -30.h, size.width * 0.5, -30.h)
//       ..quadraticBezierTo(size.width * 0.6, -30.h, size.width * 0.62, 0)
//       ..quadraticBezierTo(size.width * 0.65, 20.h, size.width * 0.7, 20.h)
//       ..lineTo(size.width, 20.h)
//       ..lineTo(size.width, size.height)
//       ..lineTo(0, size.height)
//       ..close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }





