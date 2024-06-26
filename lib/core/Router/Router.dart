import 'package:bluefieldnet/modules/auth/presentation/forget_password/forget_password_screen.dart';
import 'package:bluefieldnet/modules/auth/presentation/join_as_freelancer/complete_register.dart';
import 'package:bluefieldnet/modules/auth/presentation/sign_up/sign_up_screen.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/client_jobs.dart';
import 'package:bluefieldnet/modules/jobs/presentation/screens/filter/filter_screen.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/applied_for_jobs/applied_for_jobs_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/completed_contracts/completed_contracts_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/inbox/inbox_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/my_active_jobs/my_active_job_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/notifications/notifications_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/education/education_dashboard_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/employment/empolyment_dashboard_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/experties_level/experties_level_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/expertise/profile_dashboard_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/horly_rate/horly_rate_wiget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/language/language_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/location/location_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/phone/phone_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/profile_photo/profile_photo_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/stripe/stripe_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/title/title_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/reports/reports_widget.dart';
import 'package:bluefieldnet/modules/layout/presentaions/layout/layout_screen.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_title_widget/job_title_widget.dart';
import 'package:bluefieldnet/modules/profile/presentation/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../modules/auth/presentation/reset_password/reset_password_screen.dart';
import '../../modules/messages/presentation/messages_screen.dart';
import '../../modules/post_a_job/widgets/job_budget_widget/job_budget_widget.dart';
import '../../modules/post_a_job/widgets/job_description_widget/job_description_widget.dart';
import '../../modules/post_a_job/widgets/job_details_widget/job_details_widget.dart';
import '../../modules/post_a_job/widgets/job_experties_widget/job_experties_widget.dart';
import '../../modules/post_a_job/widgets/job_review_widget/job_review_widget.dart';
import '../../modules/post_a_job/widgets/job_visibility_widget/job_visibilty_widget.dart';
import '../../modules/splash/presentation/splash.dart';
import '../../modules/auth/presentation/login/login_screen.dart';
import '../../modules/notifications/presentation/notifications.dart';
import '../../modules/jobs/presentation/jobs.dart';
import '../../modules/post_a_job/presentation/post_a_job.dart';

class Routes {
  static const String SplashScreen = "/";
  static const String AuthScreen = "/authScreen";
  static const String ForgetPassword = "/ForgetPasswordScreen";
  static const String SignUp = "/SignUpScreen";
  static const String ResetPassword = "/ResetPassword";
  static const String completeRegister = "/completeRegister";
  static const String layoutScreen = "/LayoutScreen";
  static const String messagesScreen = "/messagesScreen";
  static const String notificationsScreen = "/notificationsScreen";
  static const String jobsScreen = "/jobsScreen";
  static const String post_a_jobScreen = "/postAJobScreen";
  static const String Filter = "/filter";
  static const String client_jobsScreen = "/clientJobsScreen";
  static const String profile = "/profile";
/////////////////////////
  static const String JobTitleWidget = "/JobTitleWidget";
  static const String JobDescriptionWidget = "/JobDescriptionWidget";
  static const String JobDetailsWidget = "/JobDetailsWidget";
  static const String JobExpertiseWidget = "/JobExpertiseWidget";
  static const String JobVisibilityWidget = "/JobVisibilityWidget";
  static const String JobBudgetWidget = "/JobBudgetWidget";
  static const String JobReviewWidget = "/JobReviewWidget";
  ///////////////
  static const String MyActiveJobWidget = "/MyActiveJobWidget";
  static const String AppliedForJobWidget = "/AppliedForJobWidget";
  static const String CompleteContactWidget = "/CompleteContactWidget";
  static const String ReportsWidget = "/ReportsWidget";
  static const String NotificationsFindJobWidget =
      "/NotificationsFindJobWidgeet";
  static const String InboxFindJobWidget = "/InboxFindJobWidget";
  static const String ProfileDashboardWidget = "/ProfileDashboardWidget";
  static const String ExpertiseLevelProfileDashboardWidget =
      "/ExpertiseLevelProfileDashboardWidget";
  static const String EducationDashboardWidget = "/EducationDashboardWidget";
  static const String EmploymentDashboardWidget = "/EmploymentDashboardWidget";
  static const String LanguageDashboardWidget = "/LanguageDashboardWidget";
  static const String HourlyRateDashboardWidget = "/HourlyRateDashboardWidget";
  static const String TitleDashBoardWidget = "/TitleDashBoardWidget";
  static const String ProfilePhotoDashBoardWidget = "/ProfilePhotoDashBoardWidget";
  static const String PhoneDashBoardWidget = "/PhoneDashBoardWidget";
  static const String LocationDashBoardWidget = "/LocationDashBoardWidget";
  static const String StripDashBoardWidget = "/StripDashBoardWidget";
}

class RouteGenerator {
  static String currentRoute = "";

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    currentRoute = routeSettings.name.toString();
    switch (routeSettings.name) {
      case Routes.SplashScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const SplashScreen();
            });
      case Routes.post_a_jobScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const PostAJobScreen();
            });
      case Routes.jobsScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobsScreen();
            });
      case Routes.profile:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ProfileScreen();
            });
      case Routes.client_jobsScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ClientJobsScreen();
            });
      case Routes.notificationsScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const NotificationsScreen();
            });
      case Routes.AuthScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const AuthScreen();
            });
      case Routes.ForgetPassword:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ForgetPasswordScreen();
            });
      case Routes.SignUp:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const SignUpScreen();
            });
      case Routes.ResetPassword:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ResetPasswordScreen();
            });
      case Routes.completeRegister:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return CompleteRegisterScreen(
                onPressed: routeSettings.arguments as void Function(String),
              );
            });
      case Routes.layoutScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return LayoutScreen();
            });
      case Routes.Filter:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return FilterScreen();
            });
      case Routes.messagesScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const MessagesScreen();
            });
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> getNestedRoute(RouteSettings routeSettings) {
    currentRoute = routeSettings.name.toString();
    switch (routeSettings.name) {
      case Routes.JobTitleWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobTitleWidget();
            });
      case Routes.JobDescriptionWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobDescriptionWidget();
            });
      case Routes.JobDetailsWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobDetailsWidget();
            });
      case Routes.JobExpertiseWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobExpertiseWidget();
            });
      case Routes.JobVisibilityWidget:
        return CupertinoPageRoute(builder: (_) {
          return const JobVisibilityWidget();
        });
      case Routes.JobBudgetWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobBudgetWidget();
            });
      case Routes.JobReviewWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobReviewWidget();
            });

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> getJobsNestedRoute(RouteSettings routeSettings) {
    currentRoute = routeSettings.name.toString();
    switch (routeSettings.name) {
      case Routes.MyActiveJobWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const MyActiveJobWidget();
            });
      case Routes.AppliedForJobWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const AppliedForJobWidget();
            });
      case Routes.CompleteContactWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const CompleteContactWidget();
            });
      case Routes.ReportsWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ReportsWidget();
            });
      case Routes.NotificationsFindJobWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const NotificationsFindJobWidget();
            });
      case Routes.InboxFindJobWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const InboxFindJobWidget();
            });
      case Routes.ProfileDashboardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ProfileDashboardWidget();
            });
      case Routes.ExpertiseLevelProfileDashboardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ExpertiseLevelProfileDashboardWidget();
            });
      case Routes.EducationDashboardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const EducationDashboardWidget();
            });
      case Routes.EmploymentDashboardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const EmploymentDashboardWidget();
            });
      case Routes.LanguageDashboardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const LanguageDashboardWidget();
            });
      case Routes.HourlyRateDashboardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const HourlyRateDashboardWidget();
            });
        case Routes.TitleDashBoardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const TitleDashBoardWidget();
            });
        case Routes.ProfilePhotoDashBoardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ProfilePhotoDashBoardWidget();
            });
        case Routes.PhoneDashBoardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const PhoneDashBoardWidget();
            });
        case Routes.LocationDashBoardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const LocationDashBoardWidget();
            });
        case Routes.StripDashBoardWidget:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const StripDashBoardWidget();
            });

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return CupertinoPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("مسار غير موجود"),
              ),
              body: const Center(child: Text("مسار غير موجود")),
            ));
  }
}

// class PostsArgs {
//   final String title;
//   final String? categoryKey;
//   PostsArgs({required this.title, this.categoryKey});
// }
//
// class ShowingImagesArgs {
//   final String title;
//   final List<File> images;
//   ShowingImagesArgs({required this.title, required this.images});
// }
//
// class OtpArguments {
//   final String sendTo;
//   final dynamic Function(String) onSubmit;
//   final void Function() onReSend;
//
//   OtpArguments({
//     required this.sendTo,
//     required this.onSubmit,
//     required this.onReSend,
//   });
// }
