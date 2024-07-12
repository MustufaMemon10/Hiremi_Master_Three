import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/Languages/AddLanguages.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/widgets/TextFieldWithTitle.dart';

import '../../screens/Profile_Screen/Profile_Screen.dart';
import '../../Utils/AppSizes.dart';
import '../../Utils/colors.dart';
import '../../screens/Profile_Screen/sections/widgets_mustufa/appbar/AppBar.dart';


class AddPersonalDetails extends StatefulWidget {
  const AddPersonalDetails({super.key});

  @override
  State<AddPersonalDetails> createState() => _AddPersonalDetailsState();
}

class _AddPersonalDetailsState extends State<AddPersonalDetails> {
  String selectedGender = '';
  String selectedMaritalStatus = '';
  String differentlyAbled = '';
  TextEditingController homeController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController localAddressController = TextEditingController();
  TextEditingController permanentAddressController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: const SAppbar(
          title: 'Edit Profile',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: Sizes.responsiveXl(context),
                right: Sizes.responsiveDefaultSpace(context),
                bottom: Sizes.responsiveXxl(context)*2.4,
                left: Sizes.responsiveDefaultSpace(context)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Personal Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Gender',
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
                  SizedBox(height: Sizes.responsiveXxs(context),),
                  Row(children: [
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.blue,
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) => setState(() {
                            selectedGender = 'Male';
                          }),
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: selectedGender == 'Male'
                                  ? Colors.black
                                  : AppColors.secondaryText),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.blue,
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) => setState(() {
                            selectedGender = 'Female';
                          }),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: selectedGender == 'Female'
                                  ? Colors.black
                                  : AppColors.secondaryText),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.blue,
                          value: 'Other',
                          groupValue: selectedGender,
                          onChanged: (value) => setState(() {
                            selectedGender = 'Other';
                          }),
                        ),
                        Text(
                          'Other',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: selectedGender == 'Other'
                                  ? Colors.black
                                  : AppColors.secondaryText),
                        )
                      ],
                    ),
                  ]),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Marital Status',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: Sizes.responsiveXxs(context),),
                  Row(children: [
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.blue,
                          value: 'Single / Unmarried',
                          groupValue: selectedMaritalStatus,
                          onChanged: (value) => setState(() {
                            selectedMaritalStatus = 'Single / Unmarried';
                          }),
                        ),
                        Text(
                          'Single / Unmarried',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: selectedMaritalStatus == 'Single / Unmarried'
                                  ? Colors.black
                                  : AppColors.secondaryText),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.blue,
                          value: 'Married',
                          groupValue: selectedMaritalStatus,
                          onChanged: (value) => setState(() {
                            selectedMaritalStatus = 'Married';
                          }),
                        ),
                        Text(
                          'Married',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: selectedMaritalStatus == 'Married'
                                  ? Colors.black
                                  : AppColors.secondaryText),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.blue,
                          value: 'Other',
                          groupValue: selectedMaritalStatus,
                          onChanged: (value) => setState(() {
                            selectedMaritalStatus = 'Other';
                          }),
                        ),
                        Text(
                          'Other',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: selectedMaritalStatus == 'Other'
                                  ? Colors.black
                                  : AppColors.secondaryText),
                        )
                      ],
                    ),
                  ]),
                ],
              ),
                  Row(
                    children: [
                      Expanded(child: 
                      TextFieldWithTitle(controller: homeController, title: 'Hometown', hintText: 'eg: Bhopal')
                      ),
                      SizedBox(width: Sizes.responsiveMd(context),),
                      Expanded(child:
                      TextFieldWithTitle(controller: pinCodeController, title: 'Pincode', hintText: 'eg: 462023')
                      )
                    ],
                  ),
                  SizedBox(height: Sizes.responsiveMd(context),),
                  TextFieldWithTitle(controller: localAddressController, title: 'Local Address', hintText: 'eg: House Number, Colony Name etc.'),
                  SizedBox(height: Sizes.responsiveMd(context),),
                  TextFieldWithTitle(controller: permanentAddressController, title: 'Permanent Address', hintText: 'eg: House Number, Colony Name etc.'),
                  SizedBox(height: Sizes.responsiveMd(context),),
                  TextFieldWithTitle(
                      title: 'Date of Birth (DOB)',
                      hintText: 'DD/MM/YYYY',
                      controller: dobController,
                      spaceBtwTextField: Sizes.responsiveMd(context),
                      prefix: Icon(
                        Icons.calendar_month_sharp,
                        size: 16,
                        color: AppColors.secondaryText,
                      )),
                  SizedBox(height: Sizes.responsiveMd(context),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Are you differently abled?*',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 'Yes',
                                groupValue: differentlyAbled,
                                onChanged: (value) => setState(() {
                                  differentlyAbled = 'Yes';
                                }),
                              ),
                              Text(
                                'Yes',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: differentlyAbled == 'Yes'
                                        ? Colors.black
                                        : AppColors.secondaryText),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 'No',
                                groupValue: differentlyAbled,
                                onChanged: (value) {
                                  setState(() {
                                    differentlyAbled = 'No';
                                  });
                                },
                              ),
                              Text(
                                'No',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: differentlyAbled == 'No'
                                        ? Colors.black
                                        : AppColors.secondaryText),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextFieldWithTitle(controller: categoryController, title: 'Category (Optional)', hintText: 'eg: General, OBC etc.'),
                  SizedBox(height: Sizes.responsiveMd(context)* 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(Sizes.radiusSm)),
                            padding: EdgeInsets.symmetric(
                                vertical: Sizes.responsiveHorizontalSpace(context),
                                horizontal: Sizes.responsiveMdSm(context)),
                          ),
                          onPressed: () {
                            if (selectedGender.isNotEmpty && selectedMaritalStatus.isNotEmpty && homeController.text.isNotEmpty && pinCodeController.text.isNotEmpty && localAddressController.text.isNotEmpty && permanentAddressController.text.isNotEmpty &&differentlyAbled.isNotEmpty && dobController.text.isNotEmpty && categoryController.text.isNotEmpty) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) =>  ProfileScreen()));
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
                            side:   BorderSide(color: AppColors.primary,width: 0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(Sizes.radiusSm)),
                            padding: EdgeInsets.symmetric(
                                vertical: Sizes.responsiveSm(context),
                                horizontal: Sizes.responsiveMdSm(context)),
                          ),
                          onPressed: () {
                            if (selectedGender.isNotEmpty && selectedMaritalStatus.isNotEmpty && homeController.text.isNotEmpty && pinCodeController.text.isNotEmpty && localAddressController.text.isNotEmpty && permanentAddressController.text.isNotEmpty &&differentlyAbled.isNotEmpty && dobController.text.isNotEmpty && categoryController.text.isNotEmpty) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) =>  const AddLanguages()));
                            }
                          },
                          child:  Row(
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
                  )
                ]),

          ),
        ));
  }
}
