import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/feature/location/presentation/screens/map_screen.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/otp_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sign_up/sign_up_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: .16.sh),
            SvgPicture.asset('assets/images/sign_up/otp_icon.svg'),
            SizedBox(height: .02.sh),
            Column(
              children: [
                AutoSizeText(
                  'Please enter the code which sent to',
                  style: TextStyle(color: CustomColors.primaryColor),
                  maxFontSize: 14,
                  minFontSize: 6,
                  maxLines: 1,
                ),
                AutoSizeText(
                  ' 231237123987',
                  maxFontSize: 22,
                  minFontSize: 6,
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(height: .04.sh),
            Form(
              key: controller.otpFormKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  autoFocus: true,
                  textStyle: textTheme.headline4,
                  hintStyle: textTheme.overline,
                  obscuringWidget: SvgPicture.asset(
                    'assets/images/iam_hungry_bite_logo.svg',
                    width: 40.r,
                  ),
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 4)
                      return "I'm from validator";
                    else
                      return null;
                  },
                  pinTheme: CustomStyle.otpPinTheme,
                  cursorColor: Colors.black,
                  enableActiveFill: true,
                  controller: controller.otpTEC,
                  keyboardType: TextInputType.number,
                  onCompleted: (v) => print("Completed"),
                  onChanged: (value) => print(value),
                ),
              ),
            ),
            CustomButton(
              // onPressed: () => Get.toNamed(Routes.mapScreen),
              onPressed: () => Get.to(
                MapScreen(isFirstTimeAddLocation: true),
              ),
              title: 'done'.tr,
              fonSize: 20.sp,
              fontFamily: 'nunito',
              marginHorizontal: .30.sw,
            ),
            CustomButton(
              onPressed: () {},
              title: 'resendCode'.tr,
              textColor: CustomColors.redLightColor,
              fonSize: 14.sp,
              backgroundColor: Colors.transparent,
              borderColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
