import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';
import 'language.dart';

class ChangeLanguage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<Language>(
        underline: const SizedBox(),
        icon: const Icon(
          Icons.language,
          color: Colors.white,
        ),
        onChanged: (Language? newValue) {
          controller.handleLanguageSelection(newValue);
        },
        value: controller.selectedLanguage,
        items: Language.languageList()
            .map<DropdownMenuItem<Language>>(
              (e) => DropdownMenuItem<Language>(
                value: e,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      e.flag,
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(e.name)
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
