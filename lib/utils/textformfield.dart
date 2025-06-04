// import 'package:flutter/material.dart';
// import 'package:ppkd_b_2/constant/app_color.dart';
// import 'package:ppkd_b_2/meet_11/meet_11.dart';
// import 'package:ppkd_b_2/meet_16/database/db_helper.dart';
// import 'package:ppkd_b_2/meet_16/model/user_model.dart';

// Widget buildTextField({
//   String? hintText,
//   bool isPassword = false,
//   required TextEditingController controller,
// }) {
//   return TextFormField(
//     controller: controller,
//     validator: (value) {
//       if (value == null || value.isEmpty) {
//         return 'Please enter some text';
//       }
//       return null;
//     },
//     obscureText: isPassword ? isVisibility : false,
//     decoration: InputDecoration(
//       hintText: hintText,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(32),
//         borderSide: BorderSide(
//           color: Colors.black.withOpacity(0.2),
//           width: 1.0,
//         ),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(32),
//         borderSide: BorderSide(color: Colors.black, width: 1.0),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(32),
//         borderSide: BorderSide(
//           color: Colors.black.withOpacity(0.2),
//           width: 1.0,
//         ),
//       ),
//       suffixIcon:
//           isPassword
//               ? IconButton(
//                 onPressed: () {
//                   setState(() {
//                     isVisibility = !isVisibility;
//                   });
//                 },
//                 icon: Icon(
//                   isVisibility ? Icons.visibility_off : Icons.visibility,
//                   color: AppColor.gray88,
//                 ),
//               )
//               : null,
//     ),
//   );
// }
