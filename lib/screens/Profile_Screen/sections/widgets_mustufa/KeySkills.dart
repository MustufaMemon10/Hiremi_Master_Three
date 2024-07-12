import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/RoundedContainer/roundedContainer.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/Key%20Skills/AddKeySkills.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';

import '../../../widgets/CustomContainer/OutlinedButton.dart';


class KeySkills extends StatelessWidget {
   KeySkills({super.key,
  });
  final List<String> skills = ['UI/UX', 'Frontend', 'Backend', 'Flutter', 'Javascript'];



  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      title: 'Key Skills',
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddKeySkills())),
      child: Wrap(
          runSpacing: 10,
          spacing: Sizes.responsiveSm(context),
          children: skills.map((skill) => RoundedContainer(
                radius: 16,
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.responsiveHorizontalSpace(context),
                  vertical: Sizes.responsiveVerticalSpace(context),
                ),
                border: Border.all(width: 0.5, color: AppColors.primary),
                child: Text(
                  skill,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              )
          ).toList()
      ),
    );
  }
}
