import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/repository/auth/auth_repo.dart';
import '../../shared/error/failures.dart';
import 'register_state.dart';

class RegisterBloc extends Cubit<RegisterState> {
  RegisterBloc({required this.registerRepoImp})
      : super(const RegisterState.initial());

  static RegisterBloc of(BuildContext context) =>
      BlocProvider.of<RegisterBloc>(context);

  final AuthRepoImpl registerRepoImp;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  CountryCode countryCode = CountryCode(code: 'IQ', dialCode: '+964');

  register() async {
    try {
      emit(const RegisterState.loading());
      final result = await registerRepoImp.register(
          username: userNameController.text,
          phone: phoneController.text,
          password: passController.text,
          address: addressController.text,
          countryCode: countryCode,
          email: emailController.text,
          firstName: firstNameController.text,
          lastname: lastNameController.text,
          first_id_card_image: first_id_card_image!,
          last_id_card_image: last_id_card_image!,
          first_license_image: first_license_image!,
          last_license_image: last_license_image!,
          first_residence_card_image: first_residence_card_image!,
          last_residence_card_image: last_residence_card_image!,
          car_images: carImagesList!,
          fleetId: "1",
          rootId: "1");
      result.fold(
        (l) {
          debugPrint(
              '================= Register Bloc : ${KFailure.toError(l)}');
          emit(RegisterState.error(error: l));
        },
        (r) {
          debugPrint('================= Register Bloc : ${r.toString()}  ');
          emit(RegisterState.success(model: r));
        },
      );
    } catch (e) {
      rethrow;
      debugPrint('================= Register Bloc (Catch): ${e.toString()} ');
      emit(const RegisterState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  bool isVisible = true;

  togglePassV() {
    isVisible = !isVisible;
    emit(const RegisterState.loading());
    emit(const RegisterState.initial());
  }

  File? first_id_card_image;
  File? last_id_card_image;
  File? first_license_image;
  File? last_license_image;
  File? first_residence_card_image;
  File? last_residence_card_image;
  List<File>? carImagesList=[];

  addCarImage({required File? car_images}) {
    if (car_images != null) {
      carImagesList?.add(car_images);
    }
  }
}
