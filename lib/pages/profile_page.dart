import 'package:choplife/components/app_imports.dart';
import 'package:choplife/components/circle_image.dart';
import 'package:choplife/components/gender_dropdown.dart';

import '../components/dropdown_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late ScrollController scrollController;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  void initState() {
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleWithEditButton(
                  backgroundImage: const AssetImage("images/person.png"),
                  onEditPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 10.5.h,
            ),
            Text(
              'Personal Details',
              style: AppFonts.subTextOrange,
            ),
            SizedBox(
              height: 20.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: AppFonts.categoriesTextNormal,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "Ayodeji Ogundola",
                              fillColor: Colors.grey[200],
                              suffixIcon: const Icon(Icons.edit),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Text(
                          "Gender",
                          style: AppFonts.categoriesTextNormal,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: const GenderDropdownWidget(),
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Text(
                          "Email Address",
                          style: AppFonts.categoriesTextNormal,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "dvicxy@gmail.com",
                              fillColor: Colors.grey[200],
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Text(
                          "Country",
                          style: AppFonts.categoriesTextNormal,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: const MyDropdownTextFieldWidget(),
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Text(
                          "Phone Number",
                          style: AppFonts.categoriesTextNormal,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: TextFormField(
                            controller: _phoneController,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "08097764532",
                              fillColor: Colors.grey[200],
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Text(
                          "Referral Code",
                          style: AppFonts.categoriesTextNormal,
                        ),
                        SizedBox(
                          height: 5.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: TextFormField(
                            controller: _phoneController,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "AJYTRUU",
                              fillColor: Colors.grey[200],
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.5.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: CustomButton(
                              text: "Update",
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  // var userDetails = {
                                  //   "email": _emailController.text.trim(),
                                  // };

                                  // await authController.forgotpassword(
                                  //     userDetails: userDetails);
                                }
                                setState(() {});
                              },
                              color: const Color(0xffF4972E),
                              textcolor: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
