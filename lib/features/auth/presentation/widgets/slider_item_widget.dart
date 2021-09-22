import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iam_hungry2/core/src/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderItemWidget extends StatefulWidget {
  final String title;
  final String description;
  final String image;

  SliderItemWidget({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  SliderItemWidgetState createState() => SliderItemWidgetState();
}

class SliderItemWidgetState extends State<SliderItemWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controllerOfTitle;
  late final Animation<Offset> _offsetAnimationOfTitle;
  late final AnimationController _controllerOfImage;
  late final Animation<Offset> _offsetAnimationOfImage;
  late final AnimationController _controllerOfDescription;
  late final Animation<Offset> _offsetAnimationOfDescription;

  @override
  void initState() {
    super.initState();
    _controllerOfTitle = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );
    _offsetAnimationOfTitle = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controllerOfTitle,
      curve: Curves.ease,
    ));
    _controllerOfTitle.forward();

    _controllerOfDescription = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    _offsetAnimationOfDescription = Tween<Offset>(
      begin: Offset(-.25, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controllerOfDescription,
      curve: Curves.ease,
    ));
    _controllerOfDescription.forward();

    _controllerOfImage = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );
    _offsetAnimationOfImage = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controllerOfImage,
      curve: Curves.ease,
    ));
    _controllerOfImage.forward();
  }

  @override
  void dispose() {
    _controllerOfTitle.dispose();
    _controllerOfImage.dispose();
    _controllerOfDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 25, left: 25),
              child: Align(
                alignment: Alignment.topRight,
                child: SafeArea(
                  child: SvgPicture.asset(
                    'assets/images/iam_hungry_bite_logo.svg',
                    height: 50,
                    color: const Color.fromARGB(127, 6, 6, 1),
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: _offsetAnimationOfTitle,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  widget.title,
                  style: textTheme.headline1?.copyWith(
                    color: CustomColors.whiteColor,
                    fontSize: 40,
                    shadows: [
                      const Shadow(
                        blurRadius: 4,
                        offset: const Offset(3, 1),
                      )
                    ],
                  ),
                ),
              ),
            ),
             SlideTransition(
              position: _offsetAnimationOfDescription,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(23, 0, 10, 30),
                child: Text(
                  widget.description,
                  style: textTheme.headline1?.copyWith(
                    color: CustomColors.redLightColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        SlideTransition(
          position: _offsetAnimationOfImage,
          child: Center(
            child: SvgPicture.asset(widget.image, height: .40.sh),
          ),
        ),
      ],
    );
  }
}
