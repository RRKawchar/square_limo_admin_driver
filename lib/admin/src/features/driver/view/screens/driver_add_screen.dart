import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/helpers/helper_method.dart';
import 'package:square_limo_admin_driver/common/core/helpers/validators.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_text_form_field_with_title.dart';

class DriverAddScreen extends StatefulWidget {
  const DriverAddScreen({super.key});

  @override
  State<DriverAddScreen> createState() => _DriverAddScreenState();
}

class _DriverAddScreenState extends State<DriverAddScreen> {
  final driverFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final brandController = TextEditingController();
  final modelController = TextEditingController();
  final carTypeController = TextEditingController();
  final carNoController = TextEditingController();
  final licenseController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    brandController.dispose();
    modelController.dispose();
    carTypeController.dispose();
    licenseController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Driver Information",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: context.screenHeight,
          width: context.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF171717),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Form(
                key: driverFormKey,
                child: Column(
                  children: [
                    KTextFormFieldWithTitle(
                      controller: nameController,
                      title: "Name",
                      onTap: () {},
                      filled: true,
                      titleColor: kWhite,
                      validator: Validators.emptyValidator,
                    ),
                    const SizedBox(height: 15),
                    KTextFormFieldWithTitle(
                      controller: emailController,
                      title: "Email",
                      onTap: () {},
                      filled: true,
                      titleColor: kWhite,
                      validator: Validators.emailValidator,
                    ),
                    const SizedBox(height: 15),
                    KTextFormFieldWithTitle(
                      controller: phoneController,
                      title: "Phone",
                      onTap: () {},
                      filled: true,
                      titleColor: kWhite,
                      validator: Validators.emptyValidator,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: KTextFormFieldWithTitle(
                            controller: brandController,
                            title: "Brand Name",
                            onTap: () {},
                            filled: true,
                            titleColor: kWhite,
                            validator: Validators.emptyValidator,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: KTextFormFieldWithTitle(
                            controller: modelController,
                            title: "Model No",
                            onTap: () {},
                            filled: true,
                            titleColor: kWhite,
                            validator: Validators.emailValidator,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: KTextFormFieldWithTitle(
                            controller: carTypeController,
                            title: "Car Type",
                            onTap: () {},
                            filled: true,
                            titleColor: kWhite,
                            validator: Validators.emptyValidator,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: KTextFormFieldWithTitle(
                            controller: carNoController,
                            title: "Car No",
                            onTap: () {},
                            filled: true,
                            titleColor: kWhite,
                            validator: Validators.emptyValidator,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    KTextFormFieldWithTitle(
                      controller: licenseController,
                      title: "Enter License Number",
                      onTap: () {},
                      filled: true,
                      titleColor: kWhite,
                      validator: Validators.emptyValidator,
                    ),
                    const SizedBox(height: 15),
                    KTextFormFieldWithTitle(
                      controller: passController,
                      title: "Enter Password",
                      onTap: () {},
                      filled: true,
                      titleColor: kWhite,
                      validator: Validators.passwordValidator,
                    ),
                    const SizedBox(height: 15),
                    KTextFormFieldWithTitle(
                      controller: confirmPassController,
                      title: "Confirm Password",
                      onTap: () {},
                      filled: true,
                      titleColor: kWhite,
                      validator: Validators.passwordValidator,
                    ),
                    const SizedBox(height: 15),
                    KButton(
                      child: Text(
                        "Add Driver",
                        style: AppTextStyle.ralewayStyle(
                          color: kBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () => _onAdded(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onAdded() {
    if (driverFormKey.currentState!.validate()) {
      kPrint("Added Driver");
    }
  }
}
