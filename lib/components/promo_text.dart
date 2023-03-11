import 'app_imports.dart';

class PromoText extends StatelessWidget {
  final String mainText;
  final String subText;
  const PromoText({
    super.key,
    required this.mainText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainText,
          style: AppFonts.categoriesText,
        ),
        Text(
          subText,
          style: AppFonts.normalText,
        ),
      ],
    );
  }
}
