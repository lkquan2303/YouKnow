import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../lang/translation_service.dart';
import '../../shared/constants/common.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
        Tween(begin: Offset(0, 0), end: Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _introductionanimation,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Card(
                      color: CommonConstants.nearlyWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50.0,
                        ),
                      ),
                      elevation: 3.0,
                      child: SpeedDial(
                        icon: Icons.language,
                        direction: SpeedDialDirection.down,
                        curve: Curves.bounceOut,
                        animatedIconTheme: IconThemeData(size: 12.0),
                        backgroundColor: CommonConstants.kPrimaryColor,
                        foregroundColor: CommonConstants.nearlyWhite,
                        children: [
                          SpeedDialChild(
                            backgroundColor: CommonConstants.kPrimaryLightColor,
                            label: '🇻🇳 vietnamese',
                            onTap: () {
                              TranslationService.changeLocale('vi');
                            },
                          ),
                          SpeedDialChild(
                            backgroundColor: CommonConstants.kPrimaryLightColor,
                            label: '🇺🇸 English',
                            onTap: () {
                              TranslationService.changeLocale('en');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/introduction_animation/undraw_engineering_team_a7n2.svg',
                height: MediaQuery.sizeOf(context).height - 400,
              ),
              Text(
                CommonConstants.clearhead.tr,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(left: 64, right: 64),
                child: Text(
                  CommonConstants.titleSplash1.tr,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 16),
                child: InkWell(
                  onTap: () {
                    widget.animationController.animateTo(0.2);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 58,
                    padding: EdgeInsets.only(
                      left: 56.0,
                      right: 56.0,
                      top: 15,
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38.0),
                      color: CommonConstants.kPrimaryColor,
                    ),
                    child: Text(
                      CommonConstants.textBtnLetBegin.tr,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
