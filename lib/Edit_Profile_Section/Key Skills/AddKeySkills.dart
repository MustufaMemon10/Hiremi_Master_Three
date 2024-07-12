import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/Education/AddEducation.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/widgets/TextFieldWithTitle.dart';
import 'package:hiremi_version_two/Utils/validators/validation.dart';
import 'package:hiremi_version_two/screens/Profile_Screen/Profile_Screen.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';
import 'package:hiremi_version_two/screens/Profile_Screen/sections/widgets_mustufa/appbar/AppBar.dart';

import '../../Custom_Widget/drawer_child.dart';
import '../../Notofication_screen.dart';
import '../widgets/CustomTextField.dart';

class AddKeySkills extends StatefulWidget {
   const AddKeySkills({super.key, });

  @override
  State<AddKeySkills> createState() => _AddKeySkillsState();
}

class _AddKeySkillsState extends State<AddKeySkills> {
   final skillController = TextEditingController();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: EdgeInsets.only(
            top: Sizes.responsiveXl(context),
            right: Sizes.responsiveDefaultSpace(context),
            bottom: kToolbarHeight,
            left: Sizes.responsiveDefaultSpace(context)),
        child:
            Form(
              key: formKey,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Key Skills',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Sizes.responsiveMd(context),
                ),
                TextFieldWithTitle(controller: skillController, title: 'Key Skills', hintText: 'Eg: Flutter Developer',
                    suffix: Icon(
                          Icons.open_with,
                          size: 15,
                          color: AppColors.secondaryText,
                        ),
                  validator: (value)=> SValidator.validateEmptyText('Skills', value),
                ),
                SizedBox(
                  height: Sizes.responsiveXs(context),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Word Limit is 100-250 words.',
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ),
                SizedBox(
                  height: Sizes.responsiveMd(context),
                ),
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
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  ProfileScreen(isVerified: false,)));
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
                          if(formKey.currentState!.validate()){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>   AddEducation()));
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

              ],
              ),
            ),
      ),
    );
  }
}
