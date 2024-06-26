import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/drop_down_payment.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/freelancer_experience_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/freelancer_time_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/freelancer_toggle_payment.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/Router/Router.dart';
import '../../../../shared/widgets/autocomplate.dart';
import '../../cubit/cubit.dart';

class JobBudgetWidget extends StatefulWidget {
  const JobBudgetWidget({Key? key}) : super(key: key);

  @override
  State<JobBudgetWidget> createState() => _JobBudgetWidgetState();
}

class _JobBudgetWidgetState extends State<JobBudgetWidget> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            DefinitionRow(
              title: "Budget",
            ).SliverBox,
            16.ph.SliverBox,
            const CustomText(
              'Budget',
              fontsize: 20,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            const CustomText(
              'How would you like to pay your freelancer or agency?',
              fontsize: 14,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            BudgetFreelancerTogglePayment().SliverPadding,
            16.ph.SliverPadding,
            const CustomText(
              'What level of experience should your freelancer have?',
              fontsize: 14,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            BudgetFreelancerExperienceToggleWidget().SliverPadding,
            16.ph.SliverPadding,
            const CustomText(
              'What level of experience should your freelancer have?',
              fontsize: 14,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            CustomAutoCompleteTextField(
              localData: true,
              function: (s) {
                return cubit.expected_time;
              },
              itemAsString: (p0) {
                return p0.name ?? '';
              },
              onChanged: (s) {
                cubit.postAJobRequest.expected_time = s.id;
                cubit.postAJobRequest.expectedTime = s;
              },
              validator: Validation.defaultValidation,
            ).SliverPadding,
            // DropDownItem(
            //   onChanged: (e) {},
            // options: [
            //   "More than 6 months",
            //   "3 to 6 months",
            //   "1 to 3 months",
            //   "Less than 1 month",
            // ],
            //   hint: "choose time",
            // ),

            16.ph.SliverPadding,
            const CustomText(
              'What is your total time requirement for the project (hrs.)?',
              fontsize: 14,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            TextFormFieldWidget(
              onSaved: (e){
                cubit.postAJobRequest.total_hours = e;
              },

            ).SliverPadding,
            16.ph.SliverPadding,
            const CustomText(
              'Do you have a time requirement/week for this project?',
              fontsize: 14,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            BudgetFreelancerTimeToggleWidget().SliverPadding,
            16.ph.SliverPadding,
            const CustomText(
              'What level of experience should your freelancer have?',
              fontsize: 14,
              color: AppColors.font,
              fontFamily: "Sans",
              weight: FontWeight.w500,
            ).SliverPadding,
            16.ph.SliverPadding,
            PaymentDropDownWidget().SliverPadding,
            // SummaryWidget(),
            32.ph.SliverPadding,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  formKey.currentState!.save();
                  if (cubit.postAJobRequest.pay_type == null) {
                    Alerts.snack(
                        text: "Pay Type is Required", state: SnackState.failed);
                  } else if (cubit.postAJobRequest.level_experince == null) {
                    Alerts.snack(
                        text: "Level Experience is Required",
                        state: SnackState.failed);
                  } else if (cubit.postAJobRequest.expected_time == null) {
                    Alerts.snack(
                        text: "Expected Time is Required",
                        state: SnackState.failed);
                  } else if (cubit.postAJobRequest.budget == null) {
                    Alerts.snack(
                        text: "Budget is Required", state: SnackState.failed);
                  } else if (cubit.postAJobRequest.number_payment == null) {
                    Alerts.snack(
                        text: "Number of Payment is Required",
                        state: SnackState.failed);
                  } else if (cubit.postAJobRequest.payment_frequency == null) {
                    Alerts.snack(
                        text: "payment frequency is Required",
                        state: SnackState.failed);
                  } else if (cubit.postAJobRequest.total_hours== null) {
                    Alerts.snack(
                        text: "Total hours is Required",
                        state: SnackState.failed);
                  } else {
                    Navigator.pushNamed(context, Routes.JobReviewWidget);
                  }
                },
                title: "Next",
                buttonColor: AppColors.buttonColor,
              ),
            ]).SliverPadding
          ],
        ),
      ),
    );
  }
}
