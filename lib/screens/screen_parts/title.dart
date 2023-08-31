import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/colors.dart';
import '../../res/constants.dart';
import '../../res/images.dart';

Widget title(String title,){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(
              polygon,
              alignment: Alignment.centerLeft,
              color: mainColor,
            ),
          ),
          Text(
            title,
            style: textStyleW700Size18,
          ),
        ],
      ),
      Icon(
        Icons.arrow_forward,
        color: mainColor,
      ),
    ],
  );
}