import 'package:flutter/material.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../widgets/elevated_button_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';

class ResetPassView extends StatelessWidget {
  const ResetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 51, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Reset your password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(text: "Email"),
              const CustomTextFormField(
                icon: Icons.email_outlined,
                nameText: "Enter Email",
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Password"),
              const CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  nameText: "********",
                  icon: Icons.visibility_off_outlined),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Confirm Password"),
              const CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  nameText: "********",
                  icon: Icons.visibility_off_outlined),
              const SizedBox(
                height: 28,
              ),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.signInRoute);
                },
                width: 300,
                text: "Reset password",
                color: ColorManager.primaryMainColor,
                colortext: ColorManager.textColor,
              ),
              const SizedBox(
                height: 28,
              ),
              /* CustomTextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.signUpRoute);
                },
                text: 'Or Sign up by',
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
