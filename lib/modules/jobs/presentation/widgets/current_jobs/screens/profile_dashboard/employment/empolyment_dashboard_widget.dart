import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/employment/widgets/add_employment_text_button.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/employment/widgets/remove_employment_icon.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmploymentDashboardWidget extends StatelessWidget {
  const EmploymentDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              JobDefinitionRow(
                title: "Profile DashBoard",
                image: "assets/icons/dashboard.svg",
              ),
              16.ph,
              Container(
                color: Colors.white,
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "Employment",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "4/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    8.ph,
                    CustomText(
                      'Add your past work experience',
                      fontsize: 11,
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),
                    16.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          "CEO/bluefiled net",
                          fontsize: 14,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w500,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon:
                                SvgPicture.asset("assets/icons/Edit.svg")),
                            RemoveEmploymentButton(),
                          ],
                        ),
                      ],
                    ),
                    8.ph,
                    CustomText(
                      "January 2023 , present",
                      fontsize: 14,
                      color: Colors.black.withOpacity(0.8),
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),
                    8.ph,
                    AddEmploymentButtonWidget(),
                    32.ph,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonWidget(
                            width: 150,
                            height: 40,
                            borderColor: AppColors.buttonBorderColor,
                            withBorder: true,
                            buttonColor: Colors.white,
                            textColor: AppColors.buttonBorderColor,
                            title: "Previous",
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ButtonWidget(
                            width: 150,
                            height: 40,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.LanguageDashboardWidget);
                            },
                            title: "Next",
                            buttonColor: AppColors.buttonColor,
                          ),
                        ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
