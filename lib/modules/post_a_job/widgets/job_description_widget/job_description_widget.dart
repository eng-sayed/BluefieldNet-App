import 'dart:io';

import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/Router/Router.dart';
import '../../cubit/cubit.dart';

class JobDescriptionWidget extends StatefulWidget {
  const JobDescriptionWidget({Key? key}) : super(key: key);

  @override
  State<JobDescriptionWidget> createState() => _JobDescriptionWidgetState();
}

class _JobDescriptionWidgetState extends State<JobDescriptionWidget> {
  final formKey = GlobalKey<FormState>();

  List<File>? file;
  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DefinitionRow(
            title: "Description",
          ).SliverBox,
          16.ph.SliverBox,
          Form(
            key: formKey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: AppColors.whiteBackground,
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      'Description',
                      fontsize: 20,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    16.ph,
                    const CustomText(
                      'A good description includes:',
                      fontsize: 16,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    16.ph,
                    Padding(
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
                          'What the deliverable is',
                          fontsize: 12,
                          color: AppColors.dotColor,
                          fontFamily: "Roboto",
                          weight: FontWeight.w400,
                        ),
                      ]),
                    ),
                    Padding(
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
                          'Type of freelancer or agency you\'re looking for',
                          fontsize: 12,
                          color: AppColors.dotColor,
                          fontFamily: "Roboto",
                          weight: FontWeight.w400,
                        ),
                      ]),
                    ),
                    Padding(
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
                          'Anything unique about the project, team, or your company',
                          fontsize: 12,
                          color: AppColors.dotColor,
                          fontFamily: "Roboto",
                          weight: FontWeight.w400,
                        ),
                      ]),
                    ),
                    /*    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
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
                              'Type of freelancer or agency you are looking for',
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
                     */
                    16.ph,
                    TextFormFieldWidget(
                      hintText: 'Type Here',
                      maxLines: 7,
                      minLines: 4,
                      onSaved: (value) {
                        cubit.postAJobRequest.description = value;
                      },
                      validator: Validation.defaultValidation,
                      // decoration: InputDecoration(
                      //   labelText: 'Type Here',

                      //   border: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //           color: AppColors.bottomNavIcon, width: 1)),

                      //   enabled: true,
                      //   contentPadding:
                      //       EdgeInsets.symmetric(vertical: 50), // <-- SEE HERE
                      // ),
                    ),
                    16.ph,
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                        width: 220,
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: AppColors.additionalButtonColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/description.svg"),
                            8.pw,
                            const CustomText(
                              'Additional project files',
                              fontsize: 14,
                              color: AppColors.dotColor,
                              fontFamily: "Roboto",
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      16.pw,
                      IconButton(
                          onPressed: () async {
//                             FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

// if (result != null) {
//   List<File> files = result.paths.map((path) => File(path)).toList();
// } else {
//   // User canceled the picker
// }
                            await Utils.myMedia.pickImages().then((value) {
                              if (value != null) {
                                setState(() {
                                  cubit.postAJobRequest.images = value;
                                  // value.map((e) {
                                  //   return File(e.path);
                                  // }).toList();
                                });
                              }
                            });
                            print(cubit.postAJobRequest.images?.length);
                          },
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: AppColors.additionalButtonColor,
                            ),
                            child: SvgPicture.asset("assets/icons/share.svg"),
                          ))
                    ]),
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
                              if (formKey.currentState!.validate()) {
                                if (cubit.postAJobRequest.images == null) {
                                  Alerts.snack(
                                      text: "You have to choose image",
                                      state: SnackState.failed);
                                } else {
                                  formKey.currentState!.save();
                                  Navigator.pushNamed(
                                      context, Routes.JobDetailsWidget);
                                }
                              }
                              // Navigator.pushNamed(
                              //     context, Routes.JobDetailsWidget);
                            },
                            title: "Next",
                            buttonColor: AppColors.buttonColor,
                          ),
                        ])
                  ],
                ),
              ),
            ).SliverBox,
          ),
        ],
      ),
    );
  }
}
