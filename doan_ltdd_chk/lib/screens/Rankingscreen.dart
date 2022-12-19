// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class RankingScreen extends StatelessWidget {
//   const RankingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               SizedBox(height: 40),
//               Text(
//                 'Ranking',
//                 style: TextStyle(
//                   fontSize: 40,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 40),
//               StreamBuilder(
//                 stream: FirebaseFirestore.instance
//                     .collection('users')
//                     .orderBy('score')
//                     .snapshots(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }
//                   final users = snapshot.data!.docs;
//                   return ListView.builder(itemBuilder: (context, index) {
//                     return Card(
//                       child: ListTile(
//                         title: Text(
//                           users[index]['name'],
//                         ),
//                         trailing: Text(users[index]['score'].toString()),
//                       ),
//                     );
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
