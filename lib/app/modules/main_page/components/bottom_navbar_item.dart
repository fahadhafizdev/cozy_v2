// import 'package:flutter/material.dart';

// class BottomNavbarItem extends StatelessWidget {
//   final String imageUrl;

//   final int index;

//   const BottomNavbarItem({required this.imageUrl, required this.index});

//   @override
//   Widget build(BuildContext context) {
  

//     return GestureDetector(
//       onTap: () {
       
//         print(index);
//       },
//       child: Column(
//         children: [
//           Spacer(),
//           Image.asset(
//             imageUrl,
//             width: 26,
//             height: 26,
//             color: (index == pageProvider.number) ? purpleColor : greyColor,
//           ),
//           Spacer(),
//           (index == pageProvider.number)
//               ? Container(
//                   width: 30,
//                   height: 2,
//                   decoration: BoxDecoration(
//                       color: purpleColor,
//                       borderRadius: BorderRadius.vertical(
//                         top: Radius.circular(1000),
//                       )),
//                 )
//               : Container()
//         ],
//       ),
//     );
//   }
// }
