import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets_login_signup/form_divider.dart';
import 'package:t_store/common/widgets_login_signup/social_buttons.dart';
import 'package:t_store/features/screens/login/widgets/login_form.dart';
import 'package:t_store/features/screens/login/widgets/login_header.dart';

import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
