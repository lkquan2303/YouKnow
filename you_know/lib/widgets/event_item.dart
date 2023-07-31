import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/constants/common.dart';
import 'badge_decoration/badge_position.dart';
import 'badge_decoration/rotated_corner_decoration.dart';

class EventItem extends StatelessWidget {
  final Size _size;
  final String _urlImage;
  final bool _isHotItem;

  const EventItem(
      {Key? key,
      required Size size,
      required String urlImage,
      bool isHotItem = false})
      : this._size = size,
        this._urlImage = urlImage,
        this._isHotItem = isHotItem,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            elevation: 4, // Change this
            shadowColor: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  foregroundDecoration: this._isHotItem
                      ? RotatedCornerDecoration.withColor(
                          color: Colors.red,
                          spanBaselineShift: 4,
                          badgeSize: Size(54, 54),
                          badgeCornerRadius: Radius.circular(8),
                          badgePosition: BadgePosition.topStart,
                          textSpan: TextSpan(
                            text: 'HOT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                    color: Colors.yellowAccent, blurRadius: 8),
                              ],
                            ),
                          ),
                        )
                      : null,
                  child: CachedNetworkImage(
                      imageUrl: this._urlImage,
                      fit: BoxFit.cover,
                      height: 150,
                      width: this._size.width,
                      placeholder: (context, url) =>
                          Container(color: Colors.grey),
                      errorWidget: (context, url, error) => Container(
                            color: Colors.red.shade400,
                          )),
                ),
                SizedBox(height: 8),
                Text("IN HO CHI MINH",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))
                    .paddingOnly(right: 5, left: 5),
                SizedBox(height: 8),
                Text("Sat 29 Jul",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400))
                    .paddingOnly(right: 5, left: 5),
                SizedBox(height: 8),
                Container(
                        padding: EdgeInsets.only(
                            right: 5, left: 5, top: 2, bottom: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: CommonConstants.kPrimaryColor.withOpacity(.4),
                          boxShadow: [
                            BoxShadow(
                                color: CommonConstants.kPrimaryColor
                                    .withOpacity(.4),
                                spreadRadius: 1),
                          ],
                        ),
                        child: Text("Ho Chi Minh",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Rubik',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))
                            .paddingOnly(right: 8, left: 8))
                    .paddingOnly(right: 5, left: 5),
                SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
