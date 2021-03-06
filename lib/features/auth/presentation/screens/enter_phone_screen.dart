import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/features/auth/presentation/controller/enter_phone_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterPhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final enterPhoneController = Get.find<EnterPhoneController>();
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
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              margin: EdgeInsets.symmetric(horizontal: .20.sw),
              width: .45.sw,
              decoration: CustomStyle.containerShadowDecoration,
              child: SvgPicture.asset(
                'assets/images/iam_hungry_bite_logo.svg',
                width: .40.sw,
              ),
            ),
            SizedBox(height: .04.sh),
            GetBuilder<EnterPhoneController>(
              builder: (_) => Container(
                decoration: CustomStyle.containerShadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 14),
                height: .25.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number', style: textTheme.headline5),
                    TextField(
                      controller: enterPhoneController.phoneTEC,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      style: textTheme.caption,
                      decoration: CustomStyle.authInputDecoration,
                    ),
                    Center(
                      child: CustomButton(
                        onPressed: enterPhoneController.login,
                        title: 'login'.tr,
                        paddingHorizontal: .12.sw,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
