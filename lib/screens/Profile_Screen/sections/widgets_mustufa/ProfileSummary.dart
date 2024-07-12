import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/ProfileSummary/ProfileSummary.dart';
import 'package:hiremi_version_two/Utils/colors.dart';

import '../../../widgets/CustomContainer/OutlinedButton.dart';


class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  OutlinedContainer(
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>   AddProfileSummary())),
      title: 'Profile Summary',
      child: const Column(
        children: [
          Text(
              'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
              style: TextStyle(
                fontSize: 9.0,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              )),
        ],
      ),
    );
  }
}