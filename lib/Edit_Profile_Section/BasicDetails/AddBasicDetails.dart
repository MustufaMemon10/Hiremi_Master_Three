import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/ProfileSummary/ProfileSummary.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/widgets/CustomTextField.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/widgets/TextFieldWithTitle.dart';
import 'package:hiremi_version_two/Models/UserModel.dart';
import 'package:hiremi_version_two/Notofication_screen.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';
import 'package:hiremi_version_two/Utils/validators/validation.dart';
import 'package:hiremi_version_two/screens/Profile_Screen/Profile_Screen.dart';

import '../../Custom_Widget/drawer_child.dart';

class AddBasicDetails extends StatefulWidget {
  const AddBasicDetails({
    super.key,
  });

  @override
  State<AddBasicDetails> createState() => _AddBasicDetailsState();
}

class _AddBasicDetailsState extends State<AddBasicDetails> {
  String opportunity = '';
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final whatsappController = TextEditingController();

  GlobalKey<FormState> bdKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style:  TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const NotificationScreen()));
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      drawer: const Drawer(
        child: DrawerChild(),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
                top: Sizes.responsiveXl(context),
                right: Sizes.responsiveDefaultSpace(context),
                bottom: kToolbarHeight,
                left: Sizes.responsiveDefaultSpace(context)),
            child: Form(
              key: bdKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Basic Details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Looking for',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context) * 1.3,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 'Internships',
                                groupValue: opportunity,
                                onChanged: (value) => setState(() {
                                  opportunity = value as String;
                                }),
                              ),
                              const Text(
                                'Internships',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 'Fresher Jobs',
                                groupValue: opportunity,
                                onChanged: (value) {
                                  setState(() {
                                    opportunity = value as String;
                                  });
                                },
                              ),
                              const Text(
                                'Fresher Jobs',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 'Experienced Jobs',
                                groupValue: opportunity,
                                onChanged: (value) {
                                  setState(() {
                                    opportunity = value as String;
                                  });
                                },
                              ),
                              const Text(
                                'Experienced Jobs',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWithTitle(
                            controller: cityController,
                            title: 'City',
                            hintText: 'eg: Bhopal',
                            validator: (value) =>
                                SValidator.validateEmptyText('City', value),
                          ),
                        ),
                        SizedBox(
                          width: Sizes.responsiveMd(context),
                        ),
                        Expanded(
                          child: TextFieldWithTitle(
                            controller: stateController,
                            title: 'State',
                            hintText: 'eg: Madhya Pradesh',
                            validator: (value) =>
                                SValidator.validateEmptyText('State', value),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    TextFieldWithTitle(
                      controller: emailController,
                      title: 'Email Address',
                      hintText: 'abc@gmail.com',
                      validator: (value) => SValidator.validateEmail(value),
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    TextFieldWithTitle(
                      controller: phoneController,
                      title: 'Phone Number',
                      hintText: '9988776563',
                      validator: (value) => SValidator.validatePhoneNumber(value,'Phone'),
                        textInputType: TextInputType.number
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    TextFieldWithTitle(
                        controller: whatsappController,
                        title: 'WhatsApp Number',
                        hintText: '9988776563',
                        validator: (value) => SValidator.validatePhoneNumber(value,'WhatsApp'),
                        textInputType: TextInputType.number
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context) * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Sizes.radiusSm)),
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      Sizes.responsiveHorizontalSpace(context),
                                  horizontal: Sizes.responsiveMdSm(context)),
                            ),
                            onPressed: () {
                              if (bdKey.currentState!.validate() && opportunity.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => ProfileScreen(isVerified: false,)));
                              }
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            )),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: AppColors.primary, width: 0.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Sizes.radiusSm)),
                              padding: EdgeInsets.symmetric(
                                  vertical: Sizes.responsiveSm(context),
                                  horizontal: Sizes.responsiveMdSm(context)),
                            ),
                            onPressed: () {
                              if (bdKey.currentState!.validate() && opportunity.isNotEmpty) {
                                setState(() {
                                  UserModel(
                                      opportunity: opportunity,
                                      city: cityController.text,
                                      state: stateController.text,
                                      email: emailController.text,
                                      phoneNumber: phoneController.text,
                                      whatsappNumber: whatsappController.text);
                                });
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => AddProfileSummary()));
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Save & Next',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primary,
                                  ),
                                ),
                                SizedBox(
                                  width: Sizes.responsiveXs(context),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 11,
                                  color: AppColors.primary,
                                )
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 64,
                    )
                  ]),
            )),
      ),
    );
  }
}
