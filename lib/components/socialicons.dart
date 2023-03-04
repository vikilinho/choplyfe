import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  final String image;

  const SocialIcons({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xffE4E3E3),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(image),
        ),
      ],
    );
  }
}
