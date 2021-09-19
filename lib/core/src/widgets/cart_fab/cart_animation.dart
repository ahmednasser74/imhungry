import 'package:flutter/material.dart';
import 'package:iam_hungry2/features/cart/presentation/screens/check_out_screen.dart';

class CartAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 500),
              child: CheckOutScreen(),
              builder: (_, dynamic value, child) {
                return ShaderMask(
                  shaderCallback: (rect) {
                    return RadialGradient(colors: [
                      Colors.white,
                      Colors.white,
                      Colors.transparent,
                      Colors.transparent,
                    ],
                      stops: [
                        0.0,
                        0.55,
                        0.6,
                        1.0
                      ],
                      center: FractionalOffset(0.95, .90),
                      radius: value * 5)
                        .createShader(rect);
                  },
                  child: child,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
