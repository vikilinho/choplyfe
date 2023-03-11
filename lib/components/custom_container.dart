import 'package:choplife/components/app_imports.dart';

class MyCustomContainer extends StatefulWidget {
  final IconData iconData;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const MyCustomContainer(
      {Key? key,
      required this.iconData,
      required this.text,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  _MyCustomContainerState createState() => _MyCustomContainerState();
}

class _MyCustomContainerState extends State<MyCustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 25.h,
        width: 70.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.isSelected ? Colors.purple : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.iconData,
              size: 14.h,
              color: widget.isSelected ? Colors.white : Colors.black,
            ),
            SizedBox(width: 5.w),
            Text(
              widget.text,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
