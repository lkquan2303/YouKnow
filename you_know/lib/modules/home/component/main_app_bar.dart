import 'package:flutter/material.dart';

import '../../../shared/constants/common.dart';

const double mainAppbarPadding = 28;

class MainSliverAppBar extends SliverAppBar {
  MainSliverAppBar(
      {GlobalKey? appBarKey,
      double height = kToolbarHeight + mainAppbarPadding * 2,
      double expandedFontSize = 30,
      required BuildContext context})
      : super(
          automaticallyImplyLeading: false,
          backgroundColor: CommonConstants.kPrimaryColor.withOpacity(.4),
          toolbarHeight: 10,
        );
}
