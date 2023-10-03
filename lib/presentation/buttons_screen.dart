// import 'package:buttons/components/custom_button.dart';
// import 'package:flutter/material.dart';

// class ButtonsExample extends StatelessWidget {
//   const ButtonsExample({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Buttons"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             TextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/ScreenOne');
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 100,
//                   decoration: const BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.all(Radius.circular(8))),
//                   child: const Center(
//                     child: Text(
//                       "Text Button",
//                       style: TextStyle(color: Colors.black, fontSize: 15),
//                       maxLines: 1,
//                     ),
//                   ),
//                 )),
//             IconButton(
//                 onPressed: () {
//                   print("icon pressed");
//                 },
//                 icon: const Icon(Icons.ac_unit_sharp)),
//             MyButton(
//               onTap: () {
//                 print("Tapped");
//               },
//               icon: Icons.home,
//               iconColor: Colors.white,
//               splashColor: Colors.yellow,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             CustomButtonGesture(
//               onTap: () {
//                 print("tapped");
//               },
//               text: "Gesture Button",
//             ),
//             FloatingActionButton(onPressed: () => print("Pressed")),
//           ],
//         ),
//       ),
//     );
//   }
// }
