import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class AutoSliderImagesWidget extends StatelessWidget {

 final List<String> images = [
    'assets/images/test/banner_three.png',
    'assets/images/test/banner_two.JPG',
    'assets/images/test/banner_one.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Expanded(
          child: new Swiper(
            onTap: (value){},
            viewportFraction: 0.8,
            scale: 0.85,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.fill),
                  ),
                ),
              );
            },
            autoplay: true,
            itemCount: images.length,
            pagination: SwiperPagination(
              margin: EdgeInsets.all(0.0),
              builder: SwiperCustomPagination(
                builder: (BuildContext context, SwiperPluginConfig config) {
                  return ConstrainedBox(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Align(
                            alignment: Alignment.center,
                            child: new DotSwiperPaginationBuilder(
                                color: Colors.grey,
                                activeColor: CustomColors.primaryColor,
                                size: 8,
                                space: 2,
                                activeSize: 12)
                                .build(context, config),
                          ),
                        )
                      ],
                    ),
                    constraints: new BoxConstraints.expand(height: 50.0),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
