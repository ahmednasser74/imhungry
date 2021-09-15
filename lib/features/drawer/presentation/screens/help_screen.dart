import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iam_hungry2/core/src/widgets/custom_app_bar.dart';
import 'package:iam_hungry2/core/src/widgets/side_title_widget.dart';
import 'package:iam_hungry2/features/drawer/presentation/widgets/help_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.06.sh),
        child: CustomAppBar(centerTitle: 'Help'),
      ),
      body: ListView(
        children: [
          SizedBox(height: .03.sh),
          Center(
            child: SvgPicture.asset(
              'assets/images/drawer/help_icon.svg',
              height: .20.sh,
            ),
          ),
          SizedBox(height: .03.sh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello, '),
              Text('Ahmed! ', style: textTheme.headline5),
              AutoSizeText(
                'How can we help you?',
                maxLines: 1,
                minFontSize: 10,
                maxFontSize: 22,
              ),
            ],
          ),
          SizedBox(height: .015.sh),
          HelpItemWidget(
            helpTitle: 'I need help with my current order',
            onTap: () {},
          ),
          HelpItemWidget(
            helpTitle: 'I need help with my previous order',
            onTap: () {},
          ),
          HelpItemWidget(
            helpTitle: 'I need help while ordering',
            onTap: () {},
          ),
          SizedBox(height: .08.sh),
          SideTitleWidget(title: 'Chat'),
          HelpItemWidget(
            helpTitle: 'Chatting with us',
            onTap: () {},
          ),
          SizedBox(height: .04.sh),
          SideTitleWidget(title: 'More Help'),
          HelpItemWidget(
            helpTitle: 'Go for FAQs',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
