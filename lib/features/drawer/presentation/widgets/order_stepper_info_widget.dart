import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTrackStepperWidget extends StatelessWidget {
  final bool orderIsPreparingDone = true;
  final bool deliveryOnWayDone = false;
  final bool orderDeliveredDone = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/images/drawer/order_placed_icon.svg',
                width: .10.sw,
                color: CustomColors.primaryColor,
              ),
              SvgPicture.asset(
                'assets/images/drawer/order_preparing_icon.svg',
                width: .10.sw,
              ),
              SvgPicture.asset(
                'assets/images/drawer/bike_driver_icon.svg',
                width: .15.sw,
              ),
              SvgPicture.asset(
                'assets/images/drawer/order_delivered_icon.svg',
                width: .08.sw,
                color: CustomColors.primaryColor,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 6,
                        color: orderIsPreparingDone
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 6,
                        color: deliveryOnWayDone
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 6,
                        color: orderDeliveredDone
                            ? CustomColors.primaryColor
                            : CustomColors.redLightColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StepperCircleShape(stepHadDone: true),
                    StepperCircleShape(stepHadDone: orderIsPreparingDone),
                    StepperCircleShape(stepHadDone: deliveryOnWayDone),
                    StepperCircleShape(stepHadDone: orderDeliveredDone),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StepperCircleShape extends StatelessWidget {
  final bool stepHadDone;

  StepperCircleShape({required this.stepHadDone});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: .038.sw,
      backgroundColor:
          stepHadDone ? CustomColors.primaryColor : CustomColors.redLightColor,
      child: CircleAvatar(
        radius: .02.sw,
        backgroundColor: stepHadDone ? Colors.black : Colors.grey,
      ),
    );
  }
}
