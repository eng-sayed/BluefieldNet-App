import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/Router/Router.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../../../core/utiles/utiles.dart';
import '../domain/model/splash_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(SplashInitial());
  static SplashCubit get(context) => BlocProvider.of(context);

  SplashRepository splashRepository = SplashRepository(locator<DioService>());
  checkLogin() async {
    await Utils.dataManager.getUserData();
    Utils.lang = (await Utils.dataManager.getData('lng')) ?? 'ar';

    if (Utils.token.isEmpty) {
      return Routes.AuthScreen;
    } else {
      return Routes.layoutScreen;
    }
  }
}
