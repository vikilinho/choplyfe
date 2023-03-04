import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final VoidCallback? onPressed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(342.w, 50.h), backgroundColor: color),
      child: Text(
        text,
        style: TextStyle(fontSize: 17.sp, color: textcolor),
      ),
    );
  }
}
