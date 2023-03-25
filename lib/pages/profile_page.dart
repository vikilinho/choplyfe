import 'package:choplife/components/app_imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/per.jpeg"),
          ),
          SizedBox(
            height: 10.5.h,
          ),
          Text(
            'Personal Details',
            style: AppFonts.subTextWhiteBold,
          ),
        ],
      )),
    );
  }
}
