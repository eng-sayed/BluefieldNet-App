import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/modules/post_a_job/cubit/states.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:bluefieldnet/shared/widgets/loadinganderror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/Router/Router.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class PostAJobScreen extends StatefulWidget {
  const PostAJobScreen({Key? key}) : super(key: key);

  @override
  State<PostAJobScreen> createState() => _PostAJobScreenState();
}

class _PostAJobScreenState extends State<PostAJobScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PostAJobCubit()..getPostAJob(),
        child: Scaffold(
            backgroundColor: AppColors.additionalButtonColor,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BlocConsumer<PostAJobCubit, PostAJobStates>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    final cubit = PostAJobCubit.get(context);
                    return LoadingAndError(
                      isLoading: state is PostAJobLoading,
                      isError: state is PostAJobError,
                      function: () async {
                        await cubit.getPostAJob();
                      },
                      child: Column(
                        children: [
                          //  16.ph,
                          /*  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.profile);
                                },
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                              ),
                              Spacer(),
                              CustomText(
                                "Post A Job",
                                color: AppColors.font,
                                fontFamily: "Sans",
                                fontsize: 16,
                                weight: FontWeight.w600,
                              ),
                              Spacer(),
                            ],
                          ),
                          */
                          16.ph,
                          TextFormFieldWidget(
                            prefixIcon: SvgPicture.asset(
                              "assets/icons/search.svg",
                              alignment: Alignment.center,
                              fit: BoxFit.none,
                            ),
                            hintText: "Search for job",
                          ),
                          16.ph,
                          Expanded(
                            child: Navigator(
                              key: Utils.app1Nav,
                              onGenerateRoute: RouteGenerator.getNestedRoute,
                              initialRoute: Routes.JobTitleWidget,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
