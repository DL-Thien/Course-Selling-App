import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widgets/button_widgets.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';
import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //top login buttons
              thirdPartyLogin(),
              //more login options message
              Center(
                  child:
                      text14Nomal(text: "Or use your email account to login")),
              SizedBox(height: 50.h),
              appTextField(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your email address"),
              SizedBox(height: 10.h),
              appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  obscureText: true),
              SizedBox(height: 20.h),
              Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: textUnderLine(text: "Forgot password?")),
              SizedBox(height: 100.h),
              Center(child: appButton(buttonName: "Login")),
              SizedBox(height: 20.h),
              Center(child: appButton(buttonName: "Register", isLogin: false))
            ],
          ),
        ),
      )),
    );
  }
}
