import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_title_widget/widgets/row_drop_down_widget.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobTitleWidget extends StatelessWidget {
  const JobTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        DefinitionRow(
          title: "Title",
        ),
        16.ph,
        Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.whiteBackground,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Title and Category',
                  fontsize: 20,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                TextFormFieldWidget(
                  hintText: "Enter the name of your job post",
                ),
                16.ph,
                const CustomText(
                  'Enter the name of your job post',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      child: Row(children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: AppColors.dotColor,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        8.pw,
                        CustomText(
                          'Developer needed for creating a responsive WordPress Theme',
                          fontsize: 12,
                          color: AppColors.dotColor,
                          fontFamily: "Roboto",
                          weight: FontWeight.w500,
                        ),
                      ]),
                    );
                  },
                  itemCount: 3,
                  shrinkWrap: true,
                ),
                16.ph,
                const CustomText(
                  'Enter the name of your job post',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Let\'s categorize your job, which helps us personalize your job details and match your job to relevant freelancers and agencies. Here are some suggestions based on your job title',
                  fontsize: 14,
                  color: AppColors.dotColor,
                  fontFamily: "Roboto",
                  weight: FontWeight.w400,
                ),
                16.ph,
                const TitleRowDropDownWidget(),
                32.ph,
                Row(
                    children: [
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        onTap: (){},
                        title: "Next",
                        buttonColor:AppColors. buttonColor,
                      ),
                      16.pw,
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        borderColor: AppColors.buttonBorderColor,
                        withBorder: true,
                        buttonColor: Colors.white,
                        textColor:AppColors.buttonBorderColor ,
                        title: "Cancel",
                      ),
                    ]
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}