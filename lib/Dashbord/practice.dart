// import 'package:flutter/material.dart';
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Username Selector Demo',
//       home: UsernameSelector(),
//     );
//   }
// }
// class UsernameSelector extends StatefulWidget {
//   @override
//   _UsernameSelectorState createState() => _UsernameSelectorState();
// }
//
// class _UsernameSelectorState extends State<UsernameSelector> {
//   List<String> usernames = [
//     'John123',
//     'Jane456',
//     'Mike789',
//     // Add more usernames as needed
//   ];
//
//   late String selectedUsername;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Username Selector'),
//       ),
//       body: ListView.builder(
//         itemCount: usernames.length,
//         itemBuilder: (context, index) {
//           final username = usernames[index];
//           return ListTile(
//             title: Text(username),
//             onTap: () {
//               setState(() {
//                 selectedUsername = username;
//               });
//             },
//             tileColor: selectedUsername == username
//                 ? Colors.blueAccent
//                 : Colors.transparent,
//           );
//         },
//       ),
//     );
//   }
//   @override
//   Future<void> debugFillProperties(DiagnosticPropertiesBuilder properties) async {
//     super.debugFillProperties(properties);
//     properties.add(StringProperty('selectedUsername', selectedUsername));
//   }
// }
