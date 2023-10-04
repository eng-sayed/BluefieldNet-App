import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
enum Item { one, two, three }

class ProjectToggleWidget extends StatefulWidget {
  const ProjectToggleWidget({super.key});

  @override
  State<ProjectToggleWidget> createState() => _ProjectToggleWidgetState();
}

class _ProjectToggleWidgetState extends State<ProjectToggleWidget> {
  Item selectedItem = Item.one;

  Color getTextColor(Item item) {
    return selectedItem == item ? Colors.blue : Colors.black;
  }

  Color getIconColor(Item item) {
    return selectedItem == item ? AppColors.primaryColor : AppColors.grey;

  }

  void selectItem(Item item) {
    setState(() {
      selectedItem = item;
      print(selectedItem);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(

          child: GestureDetector(
            onTap: (){
              selectedItem = Item.one;
              setState(() {

              });
            },
            child: Container(

              height: 120,
              padding: EdgeInsets.symmetric(
                  horizontal: 12
              ),

              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/time.svg",color: getIconColor(Item.one),),
                  8.ph,
                  CustomText(
                    'One-time project',
                    fontsize: 10,
                    color: getTextColor(Item.one),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Find the right skills for a short-term need.',
                    fontsize: 10,
                    color: AppColors.font,
                    align: TextAlign.center,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
        8.pw,
        Expanded(

          child: GestureDetector(
            onTap: (){
              selectedItem = Item.two;
              setState(() {

              });
            },
            child: Container(

              height: 120,
              padding: EdgeInsets.symmetric(
                  horizontal: 12
              ),

              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/ongoing.svg",color: getIconColor(Item.two),),
                  8.ph,
                  CustomText(
                    'Ongoing project',
                    fontsize: 10,
                    color: getTextColor(Item.two),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Find the right skills for a short-term need.',
                    fontsize: 10,
                    color: AppColors.font,
                    align: TextAlign.center,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
        8.pw,

        Expanded(

          child: GestureDetector(
            onTap: (){
              selectedItem = Item.three;
              setState(() {

              });
            },
            child: Container(

              height: 120,
              padding: EdgeInsets.symmetric(
                  horizontal: 12
              ),

              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/complex.svg",color:  getIconColor(Item.three),),
                  8.ph,
                  CustomText(
                    'Complex projec',
                    fontsize: 10,
                    color: getTextColor(Item.three),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Find the right skills for a short-term need.',
                    fontsize: 10,
                    color: AppColors.font,
                    align: TextAlign.center,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}