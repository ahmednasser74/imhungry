import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';
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
      body: ListView(
        children: [
          SizedBox(height: .20.sh),
          SvgPicture.asset('assets/images/sign_up/otp_icon.svg'),
          SizedBox(height: .10.sh),
          Form(
            key: controller.otpFormKey,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                autoFocus: true,
                textStyle: textTheme.headline4,
                hintStyle: textTheme.overline,
                obscuringWidget: SvgPicture.asset(
                  'assets/images/iam_hungry_bite_logo.svg',
                  width: 30,
                ),
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 4) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }
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
            onPressed: () => Get.toNamed(Routes.homeScreen),
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
            backgroundColor: Colors.white,
            borderColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
