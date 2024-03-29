import 'package:choplife/components/app_imports.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final TextEditingController _newpasswordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final _newPasswordformKey = GlobalKey<FormState>();
  late ScrollController scrollController;
  @override
  void initState() {
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
    super.initState();
  }

  @override
  void dispose() {
    _newpasswordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "New Password",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Form(
                key: _newPasswordformKey,
                child: Column(
                  children: [
                    Text(
                      "New Password",
                      style: AppFonts.normalText,
                    ),
                    TextFormField(
                        controller: _newpasswordController,
                        decoration: const InputDecoration(
                          hintText: "New Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xffF4972E)), // Set the focus color to blue
                          ),
                        )),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      " Confirm New Password",
                      style: AppFonts.normalText,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                      hintText: "Confirm New Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(
                                0xffF4972E)), // Set the focus color to blue
                      ),
                    )),
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
