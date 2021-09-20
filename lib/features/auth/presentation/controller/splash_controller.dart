import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:iam_hungry2/core/src/routes.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController animationControllerChangeBg = AnimationController(
    duration: Duration(milliseconds: 200),
    vsync: this,
  );
  late Animation colorTween =
      ColorTween(begin: Colors.white, end: CustomColors.primaryColor)
          .animate(animationControllerChangeBg);
  late AnimationController animationControllerRotationIcon =
      AnimationController(
    duration: Duration(milliseconds: 300),
    vsync: this,
  );
  late Animation<double> animationRotationIcon = CurvedAnimation(
    curve: Curves.easeIn,
    parent: animationControllerRotationIcon,
  );
  late AnimationController animationControllerScaleIcon = AnimationController(
    duration: Duration(milliseconds: 700),
    vsync: this,
  )..forward();
  late Animation<double> animationScaleIcon = CurvedAnimation(
    curve: Curves.linear,
    parent: animationControllerScaleIcon,
  );

  bool isBite = true;
  Color backgroundColor = Colors.white;
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();

  @override
  void onInit() {
    super.onInit();

//    timer to play sound
    Future.delayed(Duration(milliseconds: 1500), () async {
      audioPlayer = await audioCache.play('sound/bite_splash_sound.mp3');
    });

//    timer of rotate icon
    Future.delayed(Duration(milliseconds: 2000), () {
      // animationControllerRotationIcon.forward();
    });

//    timer of change background color
    Future.delayed(Duration(milliseconds: 2250), () {
      animationControllerChangeBg.forward();
      animationControllerChangeBg.addListener(() => update());
    });

//    timer of navigate to second screen
    Future.delayed(
      Duration(milliseconds: 2700),
      () => Get.offAndToNamed(Routes.sliderScreen),
    );
  }

  bool imageChaned() {
    Future.delayed(Duration(milliseconds: 1500), () => isBite = false);
    update();
    return isBite;
  }

  void playLocal() {
    AudioPlayer player = new AudioPlayer();
    player.play("sound/bite_splash_sound.mp3");
  }

  @override
  void onClose() {
    audioPlayer.pause();
    animationControllerChangeBg.dispose();
    animationControllerRotationIcon.dispose();
    animationControllerScaleIcon.dispose();
    super.onClose();
  }
}
