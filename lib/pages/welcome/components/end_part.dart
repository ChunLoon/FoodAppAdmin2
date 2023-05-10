import 'package:flutter/material.dart';
import 'package:food_app_admin/appColors/app_colors.dart';
import 'package:food_app_admin/pages/login/login_page.dart';
import 'package:food_app_admin/pages/signup/signup_page.dart';
import 'package:food_app_admin/route/routing_page.dart';   //routing
import 'package:food_app_admin/widgets/my_button.dart'; //mybutton

class EndPart extends StatelessWidget {
  const EndPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyButton(
          onPressed: () {
            RoutingPage.goTonext( //routing
              context: context,
              navigateTo: LoginPage(),
            );
          },
          text: "LOG IN",
        ),
        SizedBox(
          height: 20,
        ),


        GestureDetector(
          onTap: () {
            RoutingPage.goTonext(
              context: context,
              navigateTo: SignupPage(),
            );
          },
          child: Text(
            "SIGNUP",
            style: TextStyle(
              color: AppColors.KgreyColor,
            ),
          ),
        )
      ],
    );
  }
}
