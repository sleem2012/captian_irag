import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import '../../../di.dart';
import '../../../shared/api_client/dio_client_helper.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/error/failures.dart';
import '../../model/user_model.dart';

abstract class _AuthRepo {
  Future<Either<KFailure, UserModel>> login(
      {required String phone,
      required String password,
      required String countryCode});

  Future<Either<KFailure, UserModel>> register({
    required String username,
    required String email,
    required String lastname,
    required String firstName,
    required String phone,
    required String password,
    required String address,
    required CountryCode countryCode,
    required String fleetId,
    required String rootId,
    required List<File> car_images,
    required File first_id_card_image,
    required File last_id_card_image,
    required File first_residence_card_image,
    required File last_residence_card_image,
    required File first_license_image,
    required File last_license_image,
  });

// Future<Either<KFailure, Unit>> logout();
}

class AuthRepoImpl implements _AuthRepo {
  AuthRepoImpl();

  @override
  Future<Either<KFailure, UserModel>> login({
    required String phone,
    required String password,
    required String countryCode,
  }) async {
    Future<Response<dynamic>> func = Di.dioClient.postWithFiles(
      KEndPoints.login,
      data: {
        "mobile_code": countryCode,
        "mobile": phone,
        "password": password,
        "device_token": "561505158465",
        "device_type": Platform.isIOS ? "ios" : "android",
      },
    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> register({
    required String username,
    required String email,
    required String lastname,
    required String firstName,
    required String phone,
    required String password,
    required String address,
    required CountryCode countryCode,
    required String fleetId,
    required String rootId,
    required List<File> car_images,
    required File first_id_card_image,
    required File last_id_card_image,
    required File first_residence_card_image,
    required File last_residence_card_image,
    required File first_license_image,
    required File last_license_image,
  }) async {
    Future<Response<dynamic>> func = Di.dioClient.postWithFiles(
      KEndPoints.register,
      data: {
        "username": username,
        "country_code": countryCode.code,
        "mobile_code": countryCode.dialCode?.replaceAll("+", "") ?? '',
        "mobile": phone,
        "address": address,
        "password": password,
        "password_confirmation": password,
        "firstname": firstName,
        "lastname": lastname,
        "email": email,
        "fleet_type_id": fleetId,
        "route_id": rootId,
        "first_id_card_image":MultipartFile.fromFileSync(first_id_card_image.path ??'' , filename: first_id_card_image.path.split('/').last) ,
        "last_id_card_image": MultipartFile.fromFileSync(last_id_card_image.path ??'' , filename: last_id_card_image.path.split('/').last),
        "first_residence_card_image": MultipartFile.fromFileSync(first_residence_card_image.path ??'' , filename: first_residence_card_image.path.split('/').last),
        "last_residence_card_image": MultipartFile.fromFileSync(last_residence_card_image.path ??'' , filename: last_residence_card_image.path.split('/').last),
        "first_license_image": MultipartFile.fromFileSync(first_license_image.path ??'' , filename: first_license_image.path.split('/').last),
        "last_license_image": MultipartFile.fromFileSync(last_license_image.path ??'' , filename: last_license_image.path.split('/').last),
        "car_images[]": car_images.map((item) => MultipartFile.fromFileSync(item.path , filename: item.path.split('/').last)).toList(),
      },
    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }
}
