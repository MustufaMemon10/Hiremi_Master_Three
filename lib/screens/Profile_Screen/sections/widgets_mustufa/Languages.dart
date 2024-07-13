import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/RoundedContainer/roundedContainer.dart';
import 'package:hiremi_version_two/Edit_Profile_Section/Languages/AddLanguages.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';

import '../../../widgets/CustomContainer/OutlinedButton.dart';

class Languages extends StatefulWidget {
   Languages({
    super.key,
     this.languages, this.onTap,
  });

  List<String>? languages;
  final void Function()? onTap;

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  void initState() {
    super.initState();
    print('Languages ARE:${widget.languages}');
  }
  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      onTap: widget.onTap,
      title: 'Languages',
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if(widget.languages != null)
        SizedBox(height: Sizes.responsiveMd(context)),
        if(widget.languages!= null && widget.languages!.isNotEmpty)
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: widget.languages!
              .map((language) => RoundedContainer(
            radius: 16,
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.responsiveHorizontalSpace(context),
              vertical: Sizes.responsiveVerticalSpace(context),
            ),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text(
              language,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
          ))
              .toList(),
        ),
      ]),
    );
  }
}
