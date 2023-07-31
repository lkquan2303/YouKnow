import 'dart:async';
import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../../shared/constants/common.dart';
import '../../shared/constants/error_api.dart';
import '../../shared/utils/common_widget.dart';

FutureOr<dynamic> responseInterceptor(
  Request request,
  Response response,
) async {
  EasyLoading.dismiss();
  handleResponseStatus(response);
  return response;
}

void handleResponseStatus(Response response) {
  final finalValue = jsonDecode(response.bodyString!);
  switch (response.statusCode) {
    case 200:
      if (finalValue["status"]) {
        return;
      }
      if (finalValue['messages'].length > 0) {
        CommonWidget.toast(CommonErrorApi
            .errorMessages[finalValue['messages'][0]['messageCode']]!);
        return;
      }
      CommonWidget.toast(CommonConstants.someThingWrongPlsTryAgain.tr);
      break;

    default:
      CommonWidget.toast(CommonConstants.someThingWrongPlsTryAgain.tr);
      break;
  }
  return;
}
