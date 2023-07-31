import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../api/api_repository.dart';

class MeController extends GetxController {
  final ApiRepository? apiRepository;
  MeController({this.apiRepository});

  ImagePicker picker = ImagePicker();

  final profileUserNameController = TextEditingController();
  final profileFirstNameController = TextEditingController();
  final profileLastNameController = TextEditingController();
  final profileEmailController = TextEditingController();
  final profilePhoneNoController = TextEditingController();
  final profileDateOfBirthController = TextEditingController();
  final profileAddressController = TextEditingController();
  final profileLinkedFacebookController = TextEditingController();
  final profileLinkedZaloController = TextEditingController();
  final profileLinkedGoogleController = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
  }

  /// Request the files permission and updates the UI accordingly
  Future<bool> requestFilePermission() async {
    PermissionStatus result;
    // In Android we need to request the storage permission,
    // while in iOS is the photos permission
    result = await Permission.photos.request();

    if (result.isGranted) {
      return true;
    }

    return false;
  }

  // Get from gallery
  void getFromGallery() async {
    final hasFilePermission = await requestFilePermission();

    if (hasFilePermission) {
      XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        // File imageFile = File(image.path);
      }
    }
  }

  @override
  void dispose() {
    profileUserNameController.dispose();
    profileFirstNameController.dispose();
    profileLastNameController.dispose();
    profileEmailController.dispose();
    profilePhoneNoController.dispose();
    profileDateOfBirthController.dispose();
    profileAddressController.dispose();
    profileLinkedFacebookController.dispose();
    profileLinkedZaloController.dispose();
    profileLinkedGoogleController.dispose();

    super.dispose();
  }
}
