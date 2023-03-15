import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:logoutpage/Logout_Page/Buttons.dart';
import 'package:logoutpage/Logout_Page/MyTextFormFeild.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController EmailController = TextEditingController();
  TextEditingController NameController = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController DateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(shrinkWrap: true, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                            "https://celebrityinside.com/wp-content/uploads/2020/01/Cricketer-Virat-Kohli.jpg",
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 2,
                          child: Container(
                            height: 31,
                            width: 31,
                            decoration: BoxDecoration(
                              color: Colors.teal.shade200,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(90.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            MyTextFormField(
              KeyboardType: TextInputType.text,
              controller: NameController,
              lableText: "Full Name",
              obscureText: true,
              validator: (value) {
                 if(value!.isEmpty){
                  return "Please Enter Name";
                }
                return null;
              },
            ),
            MyTextFormField(
              KeyboardType: TextInputType.text,
              controller: EmailController,
              lableText: "Email Address",
              obscureText: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Correct Email';
                } else if(!EmailValidator.validate(value)){
                  return "Please enter valid email";
                }  else {
                  return null;
                }
              },
            ),
            MyTextFormField(
              KeyboardType: TextInputType.phone,
              controller: PhoneNumberController,
              lableText: "Phone Number",
              obscureText: true,
              validator: (value) {
                if (value!.length != 10) {
                  return "Mobile Number must be of 10 digit";
                } else {
                  return null;
                }
              },
            ),
            MyTextFormField(
              KeyboardType: TextInputType.datetime,
              controller: DateController,
              lableText: "Date of birth",
              obscureText: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Date of birth";
                }else {
                  return null;
                }
              },
            ),
            Buttons(
                text: "Logout",
                onpress: () {
                  if (_formKey.currentState!.validate()) {

                  }
                })
          ]),
        ),
      ),
    );
  }
}
