import 'package:flutter/material.dart';

import '../../shared/constants/common.dart';
import '../../shared/widgets/icon_button_custom.dart';
import '../../shared/widgets/search_input.dart';

class AppBarCustomize extends StatelessWidget {
  final String _title;
  final Function? _onPressed;

  const AppBarCustomize({Key? key, required title, Function? onPressed})
      : _title = title,
        _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .18,
      decoration: BoxDecoration(
        color: CommonConstants.kPrimaryColor.withOpacity(.4),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  this._title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButtonCustom(
                      onPressed: this._onPressed,
                      child: SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset('assets/icons/cogwheel.png'),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10,
                ),
                width: size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: SearchInput(
                        hintText: 'Search',
                        icon: Icons.search,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
