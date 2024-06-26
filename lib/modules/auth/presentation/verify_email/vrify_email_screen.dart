import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../shared/widgets/customtext.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color(0xFF5E84A3),
                      size: 30,
                    ))
              ],
            ),
            8.ph,
            CustomText(
              "Email Verification".tr(),
              fontsize: 32,
              color: Color(0xFF000000),
            ),
            16.ph,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: CustomText(
                "We have sent an email to your joxxxxx@gmail.com with a verification code!"
                    .tr(),
                fontsize: 16,
                align: TextAlign.center,
                maxLine: 5,
                color: Color(0xFF636363),
              ),
            ),
            16.ph,
            PinCodeTextField(
              appContext: context,
              length: 4,
            ),
            32.ph,
            ButtonWidget(
              width: double.infinity,
              radius: 8,
              onTap: () {},
              fontSize: 20,
              title: "verify".tr(),
              borderColor: Color(0xFF057EE7),
            ),
          ],
        ),
      ),
    ));
  }
}
