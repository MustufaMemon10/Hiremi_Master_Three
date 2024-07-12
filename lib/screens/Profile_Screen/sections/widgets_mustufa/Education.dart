import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/Education/AddEducation.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';
import 'package:hiremi_version_two/screens/widgets/CustomContainer/OutlinedButton.dart';

class Education extends StatelessWidget {
   Education({super.key,
  });

  final List<Map<String, String>> education = [
    {
      'course': 'B.Tech, CSE',
      'place': 'Bhopal, Madhya Pradesh',
      'duration': '2021-2025 | Percentage: 70.00%',
    },
    {
      'course': '12th, Math’s Stream',
      'place': 'Bhopal, Madhya Pradesh',
      'duration': '2021-2020 | Percentage: 84.00%',
    },
    {
      'course': '10th, All Subjects',
      'place': 'Bhopal, Madhya Pradesh',
      'duration': '2019-2018 | Percentage: 84.02%',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddEducation())),
      title: 'Education',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: education
            .map((edu) => EducationChild(
                course: edu['course']!,
                place: edu['place']!,
                duration: edu['duration']!))
            .toList(),
      ),
    );
  }
}

class EducationChild extends StatelessWidget {
  const EducationChild({super.key,
    required this.course,
    required this.place,
    required this.duration,
  });

  final String course, place, duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          course,
          style: const TextStyle(
            fontSize: 9.5,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: Sizes.responsiveXs(context),
        ),
        Text(
          place,
          style: const TextStyle(
            fontSize: 7.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: Sizes.responsiveXxs(context),
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: 7.5,
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryText,
          ),
        ),
        SizedBox(height: Sizes.responsiveSm(context)),
        Divider(
          height: 0.25,
          thickness: 0.25,
          color: AppColors.secondaryText,
        ),
        SizedBox(height: Sizes.responsiveMd(context)),
      ],
    );
  }
}
