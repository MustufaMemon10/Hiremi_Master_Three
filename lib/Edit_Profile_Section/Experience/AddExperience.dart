import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/Projects/AddProjects.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/widgets/TextFieldWithTitle.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';
import 'package:hiremi_version_two/Utils/validators/validation.dart';
import 'package:hiremi_version_two/screens/Profile_Screen/Profile_Screen.dart';
import 'package:intl/intl.dart';

import '../../Custom_Widget/drawer_child.dart';
import '../../Notofication_screen.dart';

class AddExperience extends StatefulWidget {
  const AddExperience({super.key});

  @override
  State<AddExperience> createState() => _AddExperienceState();
}

class _AddExperienceState extends State<AddExperience> {
  String experience = '';
  String environment = '';
  String isCurrentCompany = '';
  TextEditingController organizationController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController skillSetController = TextEditingController();
  TextEditingController joiningDateController = TextEditingController();
  TextEditingController leavingDateController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  _selectDate(
    BuildContext context, {
    required TextEditingController controller,
  }) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
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
                bottom: Sizes.responsiveXxl(context) * 2.5,
                left: Sizes.responsiveDefaultSpace(context)),
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experience',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Do you have work experience?',
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
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              activeColor: Colors.blue,
                              value: 'Yes',
                              groupValue: experience,
                              onChanged: (value) => setState(() {
                                experience = 'Yes';
                              }),
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: experience == 'Yes'
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
                              groupValue: experience,
                              onChanged: (value) {
                                setState(() {
                                  experience = 'No';
                                });
                              },
                            ),
                            Text(
                              'No',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: experience == 'No'
                                      ? Colors.black
                                      : AppColors.secondaryText),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'What type of work environment do you prefer?',
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
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              activeColor: Colors.blue,
                              value: 'Full-time',
                              groupValue: environment,
                              onChanged: (value) => setState(() {
                                environment = 'Full-time';
                              }),
                            ),
                            Text(
                              'Full-time',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: environment == 'Full-time'
                                      ? Colors.black
                                      : AppColors.secondaryText),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              activeColor: Colors.blue,
                              value: 'Remote',
                              groupValue: environment,
                              onChanged: (value) {
                                setState(() {
                                  environment = 'Remote';
                                });
                              },
                            ),
                            Text(
                              'Remote',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: environment == 'Remote'
                                      ? Colors.black
                                      : AppColors.secondaryText),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWithTitle(
                            controller: organizationController,
                            title: 'Organization Name',
                            hintText: 'eg: Google',
                            validator: (value) => SValidator.validateEmptyText(
                                'Organization', value),
                          ),
                        ),
                        SizedBox(
                          width: Sizes.responsiveMd(context),
                        ),
                        Expanded(
                          child: TextFieldWithTitle(
                            controller: jobTitleController,
                            title: 'Job Title',
                            hintText: 'eg: Software Developer',
                            validator: (value) => SValidator.validateEmptyText(
                                'Job Title', value),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    TextFieldWithTitle(
                      controller: skillSetController,
                      title: 'SkillSet Used(Optional)',
                      hintText: 'eg: Java, Python etc.',
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    TextFieldWithTitle(
                      controller: joiningDateController,
                      title: 'Joining Date',
                      hintText: 'DD/MM/YYYY',
                      prefix: Icon(
                        Icons.calendar_month_sharp,
                        size: 16,
                        color: AppColors.secondaryText,
                      ),
                      readOnly: true,
                      textInputType: const TextInputType.numberWithOptions(),
                      validator: (value) =>
                          SValidator.validateEmptyText('Year', value),
                      onTap: () => _selectDate(context,
                          controller: joiningDateController),
                    ),
                    SizedBox(
                      height: Sizes.responsiveMd(context),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Is this your current company?',
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
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              activeColor: Colors.blue,
                              value: 'Yes',
                              groupValue: isCurrentCompany,
                              onChanged: (value) => setState(() {
                                isCurrentCompany = 'Yes';
                              }),
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: isCurrentCompany == 'Yes'
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
                              groupValue: isCurrentCompany,
                              onChanged: (value) {
                                setState(() {
                                  isCurrentCompany = 'No';
                                });
                              },
                            ),
                            Text(
                              'No',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: isCurrentCompany == 'No'
                                      ? Colors.black
                                      : AppColors.secondaryText),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextFieldWithTitle(
                      controller: leavingDateController,
                      title: 'Leaving Date, if “No” selected above.',
                      hintText: 'DD/MM/YYYY',
                      prefix: Icon(
                        Icons.calendar_month_sharp,
                        size: 16,
                        color: AppColors.secondaryText,
                      ),
                      readOnly: true,
                      textInputType: const TextInputType.numberWithOptions(),
                      validator: (value) =>
                          SValidator.validateEmptyText('Leaving Date', value),
                      onTap: () => _selectDate(context,
                          controller: leavingDateController),
                    ),
                    SizedBox(height: Sizes.responsiveMd(context) * 2),
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
                              if (formKey.currentState!.validate() && experience.isNotEmpty && environment.isNotEmpty && isCurrentCompany.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => ProfileScreen(
                                          isVerified: false,
                                        )));
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
                              if (formKey.currentState!.validate() && experience.isNotEmpty && environment.isNotEmpty && isCurrentCompany.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => const AddProjects()));
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
                    )
                  ]),
            ),
          ),
        ));
  }
}
