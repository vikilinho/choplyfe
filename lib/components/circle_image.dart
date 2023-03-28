import 'package:flutter/material.dart';

class CircleWithEditButton extends StatelessWidget {
  final double radius;
  final ImageProvider? backgroundImage;
  final Widget? child;
  final VoidCallback? onEditPressed;

  const CircleWithEditButton({
    Key? key,
    this.radius = 50.0,
    this.backgroundImage,
    this.child,
    this.onEditPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: backgroundImage,
          child: child,
        ),
        Positioned(
          bottom: -10.0,
          right: 0.0,
          child: ElevatedButton(
            onPressed: onEditPressed,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.all(12.0),
            ),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
