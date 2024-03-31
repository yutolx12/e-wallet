import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obsureText;
  final TextEditingController? controller;

  const CustomFormField({
    Key? key,
    required this.title,
    this.obsureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: blackTextStyle.copyWith(
          fontWeight: medium,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      TextFormField(
        obscureText: obsureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12)),
      ),
    ]);
  }
}
