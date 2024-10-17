import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomerTypeModel {
  static List<Map<String, String>> sosmedDataList = [
    {
      'imagePath': Assets.images.icInstagram.path,
      'title': '@flashlightcleanstar',
    },
    {
      'imagePath': Assets.images.icTiktok.path,
      'title': '@flashlightcleanstar',
    },
    {
      'imagePath': Assets.images.icWa.path,
      'title': '0822 5744 8420',
    },
  ];

  static List<Map<String, Object>> customerTypeList = [
    {
      'icon': Icons.person,
      'title': 'Customer Baru',
    },
    {
      'icon': Icons.group,
      'title': 'Member',
    },
  ];
}
