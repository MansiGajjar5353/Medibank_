// import 'package:flutter/material.dart';
//
//
// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }
//
// class _MyWidgetState extends State<MyWidget> {
//   final double minHeight = 01.0;
//   final double maxHeight = 300.0;
//   final double itemExtent = 60.0;
//   final double initialHeight = 160.0;
//
//   double _currentHeight = 160.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _currentHeight = initialHeight;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "${_currentHeight.toStringAsFixed(0)} cm",
//           style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w500),
//         ),
//         Container(
//           height:  200.0,
//           child: RotatedBox(
//             quarterTurns: 3,
//
//
//             child: ListWheelScrollView(
//               controller: FixedExtentScrollController(
//                 initialItem: (_currentHeight - minHeight).toInt(),
//               ),
//               itemExtent: itemExtent,
//               physics: FixedExtentScrollPhysics(),
//               onSelectedItemChanged: (index) {
//                 setState(() {
//                   _currentHeight = minHeight + index.toDouble();
//                 });
//               },
//               children: List.generate(
//                 ((maxHeight - minHeight).toInt() + 1),
//                     (index) => Container(
//                   alignment: Alignment.center,
//                   child: Text(
//                     "${minHeight + index}",
//                     style: TextStyle(fontSize: 24.0),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
