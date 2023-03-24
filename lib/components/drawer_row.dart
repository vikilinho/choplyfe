import 'package:choplife/components/app_imports.dart';

class DrawerRow extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData icon;

  const DrawerRow(
      {Key? key, required this.onTap, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20.h,
              color: AppColors.primaryColor,
            ),
            SizedBox(width: 10.w),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
