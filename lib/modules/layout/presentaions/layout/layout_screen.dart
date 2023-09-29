import 'package:bluefieldnet/modules/jobs/ui/jobs_screen.dart';
import 'package:bluefieldnet/modules/layout/cubit/layout_cubit.dart';
import 'package:bluefieldnet/modules/layout/widgets/bottom_naviagation_bar.dart';
import 'package:bluefieldnet/modules/messages/ui/messages_screen.dart';
import 'package:bluefieldnet/modules/notifications/ui/notifications_screen.dart';
import 'package:bluefieldnet/modules/post_a_job/ui/post_a_jon_screem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen>with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..initTabBar(this),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LayoutCubit cubit = BlocProvider.of(context);
          return Scaffold(
              body:TabBarView(
                  controller: cubit.tabController,
                  physics: NeverScrollableScrollPhysics(),

                  children:  [
                    PostAJobScreen(),
                    NotificationsScreen(),
                    JobsScreen(),
                    MessagesScreen()
                  ]

              ),

              bottomNavigationBar:CustomBottomNavBar(cubit: cubit)

          );
        },
      ),
    );
  }
}

