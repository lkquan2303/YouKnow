import 'dart:async';

import '../models/request/login_request.dart';
import '../models/response/base_response.dart';
import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<BaseResponse?> login(LoginRequest data) async {
    final res = await apiProvider.login('/mobile/login', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }
}
