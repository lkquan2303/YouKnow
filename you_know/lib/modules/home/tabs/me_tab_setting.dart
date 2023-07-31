import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/constants/common.dart';

class MetabSetting extends StatelessWidget {
  const MetabSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CommonConstants.profile.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => Get.toNamed(Routes.EDIT_PROFILE),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Text('MeTab'),
      ),
    );
  }
}
