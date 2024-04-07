import 'package:captain_iraq/data/model/roots_model.dart';
import 'package:captain_iraq/logic/get_roots/get_roots_state.dart';
import 'package:captain_iraq/shared/widgets/pick_image_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../data/model/fleet_type_model.dart';
import '../../../di.dart';
import '../../../logic/fleet_type/fleet_type_bloc.dart';
import '../../../logic/fleet_type/fleet_type_state.dart';
import '../../../logic/get_roots/get_roots_bloc.dart';
import '../../../logic/register/register_bloc.dart';
import '../../../logic/register/register_state.dart';
import '../../../shared/constants.dart';
import '../../../shared/extensions.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/helper.dart';
import '../../../shared/theme/text_theme.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/drop_down.dart';
import '../../../shared/widgets/flux_image.dart';
import '../../../shared/widgets/text_field.dart';
import '../login/login_view.dart';
import '../widget/phone_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: KColors.whiteColor,
      body: BlocProvider(
        create: (context) => Di.register,
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (model) {
                KHelper.customAwosmeDialog(
                  title: "تم انشاء الحساب بنجاح",
                  onApproveClick: () {
                    Get.offAll(() => const LoginView());
                  },
                );
              },
            );
          },
          builder: (context, state) {
            final register = RegisterBloc.of(context);
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .12,
                    ),
                    Text(
                      "انشاء حساب جديد",
                      style: KTextStyle.of(context)
                          .twenty
                          .copyWith(color: KColors.blackColor),
                    ),
                    18.h,
                    const FluxImage(
                      imageUrl: Constant.loginLogo,
                      useExtendedImage: true,
                      // fit: BoxFit.fitHeight,
                    ),
                    // 15.h,

                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "مرحبا بك",
                        style: KTextStyle.of(context).twenty.copyWith(
                            color: KColors.blackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    11.h,
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "الرجاء ادخال البيانات المطلوبة",
                          style: KTextStyle.of(context).ten.copyWith(
                              color: KColors.mainColor.withOpacity(.5)),
                        )),
                    10.h,

                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "البيانات الشخصيه",
                          style: KTextStyle.of(context).ten.copyWith(
                              color: KColors.blackColor.withOpacity(.4)),
                        )),
                    11.h,

                    KTextFormField(
                      labelText: "ادخل الأسم الأول",
                      controller: register.firstNameController,
                      upperTitle: "الأسم الأول",
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return Tr.get.name_validation;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    11.h,

                    KTextFormField(
                      labelText: "ادخل اسم العائله",
                      controller: register.lastNameController,
                      upperTitle: "اسم العائله",
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return Tr.get.name_validation;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    11.h,

                    KTextFormField(
                      labelText: "ادخل اسمك المستخدم",
                      controller: register.userNameController,
                      upperTitle: "اسم المستخدم",
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return Tr.get.name_validation;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    11.h,
                    KTextFormField(
                      labelText: "ادخل البريد الإلكتروني",
                      controller: register.emailController,
                      upperTitle: "البريد الإلكتروني",
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return Tr.get.name_validation;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    11.h,

                    KTextFormField(
                      controller: register.addressController,
                      labelText: "ادخل العنوان الخاص بك",

                      upperTitle: "العنوان",
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return Tr.get.address_validation;
                        }
                        return null;
                      },
                    ),

                    11.h,
                    PhoneFormField(
                      controller: register.phoneController,
                      onDialChanged: (c) {
                        register.countryCode = c ?? CountryCode();
                      },
                    ),
                    SizedBox(height: KHelper.listPadding),
                    KTextFormField(
                      controller: register.passController,
                      labelText: "ادخل الرمز الخاص بتسجيل  الدخول",
                      upperTitle: "الرقم السري",
                      obscureText: register.isVisible,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return Tr.get.pass_validation;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                        icon: register.isVisible
                            ? Icon(Icons.visibility_off_outlined,
                                color: KColors.blackColor.withOpacity(.4))
                            : Icon(Icons.visibility_outlined,
                                color: KColors.blackColor.withOpacity(.4)),
                        // icon: Icon(Icons.visibility_outlined,

                        onPressed: () {
                          register.togglePassV();
                        },
                      ),
                    ),
                    11.h,
                    PickProImageWidget(
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        onSelect: (file) {
                          register.first_id_card_image = file;
                        },
                        title: "صورة الهويه الشخصية الوجه الأول"),
                    11.h,
                    PickProImageWidget(
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        onSelect: (file) {
                          register.last_id_card_image = file;
                        },
                        title: "صورة الهويه الشخصية الوجه الثاني"),
                    11.h,
                    PickProImageWidget(
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        onSelect: (file) {
                          register.first_residence_card_image = file;
                        },
                        title: "صورة بطاقة السكن الوجه الأول"),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.last_residence_card_image = file;
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صورة بطاقة السكن الوجه الثاني"),
                    10.h,

                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "بيانات المركبه",
                          style: KTextStyle.of(context).ten.copyWith(
                              color: KColors.blackColor.withOpacity(.4)),
                        )),
                    11.h,
                    BlocBuilder<FleetTypeBloc, FleetTypeState>(
                      builder: (context, state) {
                        final fleet = state.whenOrNull(
                          success: (model) => model.data,
                        );
                        return fleet?.isNotEmpty == true
                            ? KDropdownBtn<FleetTypeData>(
                                validator: (values) {
                                  if (values == null) {
                                    return "الحقل مطلوب";
                                  } else {
                                    return null;
                                  }
                                },
                                title: state is FleetTypeStateLoading
                                    ? "تحميل"
                                    : "نوع المركبة",
                                onChanged: (p0) {
                                  // searchBloc.setFleetType(
                                  //     p0 ?? FleetTypeData());
                                },
                                items: fleet
                                        ?.map((e) => KHelper.of(context)
                                            .itemView(
                                                itemText: e.name ?? '',
                                                value: e))
                                        .toList() ??
                                    [],
                                hintColor: KColors.mainColor,
                                // btnDecoration: KHelper.of(context)
                                //     .circledTopContainer,
                              )
                            : const SizedBox();
                      },
                    ),
                    11.h,
                    BlocBuilder<GetRootsBloc, GetRootsState>(
                      builder: (context, state) {
                        final root = state.whenOrNull(
                          success: (model) => model.data,
                        );
                        return root?.isNotEmpty == true
                            ? KDropdownBtn<RootData>(
                                validator: (values) {
                                  if (values == null) {
                                    return "الحقل مطلوب";
                                  } else {
                                    return null;
                                  }
                                },
                                title: state is GetRootsStateLoading
                                    ? "تحميل"
                                    : "خط رحلاتك",
                                onChanged: (p0) {
                                  // searchBloc.setFleetType(
                                  //     p0 ?? FleetTypeData());
                                },
                                items: root
                                        ?.map((e) => KHelper.of(context)
                                            .itemView(
                                                itemText: e.name ?? '',
                                                value: e))
                                        .toList() ??
                                    [],
                                hintColor: KColors.mainColor,
                                // btnDecoration: KHelper.of(context)
                                //     .circledTopContainer,
                              )
                            : const SizedBox();
                      },
                    ),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.first_license_image = file;
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صور الرخصة الوجه الأول"),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.last_license_image = file;
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صور الرخصة الوجه الثاني"),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.addCarImage(car_images: file);
                          debugPrint(register.carImagesList?.length.toString());
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صور السياره 1"),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.addCarImage(car_images: file);
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صور السياره 2"),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.addCarImage(car_images: file);
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صور السياره 3"),
                    11.h,
                    PickProImageWidget(
                        onSelect: (file) {
                          register.addCarImage(car_images: file);
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return Tr.get.field_required;
                          }
                          return null;
                        },
                        title: "صور السياره 4"),

                    38.h,

                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: KButton(
                        isLoading: state is RegisterStateLoading,
                        title: 'انشاء حساب',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            register.register();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
