// import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoiLichSu.dart';
// import 'package:doan_ltdd_chk/models/action_button.dart';
// import 'package:doan_ltdd_chk/services/auth_service.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class RankAuthButton extends StatefulWidget {
//   const RankAuthButton({Key? key}) : super(key: key);

//   @override
//   _RankAuthButtonState createState() => _RankAuthButtonState();
// }

// class _RankAuthButtonState extends State<RankAuthButton> {
//   bool _isLoggedIn = false;
//   @override
//   Widget build(BuildContext context) {
//     if (_isLoggedIn)
//       return ActionButton(
//         title: 'Ranking',
//         onTap: () {},
//       );

//     return ActionButton(
//       isPrimary: false,
//       title: 'Sign in with Google',
//       onTap: () {
//         AuthService.signInWithGoogle();
//       },
//     );
//   }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   FirebaseAuth.instance.userChanges().listen((user) {
//   //     if (user == null) {
//   //       setState(() {
//   //         _isLoggedIn = false;
//   //       });
//   //       return;
//   //     }

//   //     setState(() {
//   //       _isLoggedIn = true;
//   //     });
//   //   });
//   // }
// }
