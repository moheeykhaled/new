import 'package:bookly/config/router/routes.dart';
import 'package:bookly/core/service_locator/locator.dart';
import 'package:bookly/core/utils/constant/constant.dart';
import 'package:bookly/features/OnBoarding/presentations/view/onboarding.dart';
import 'package:bookly/features/Search/data/repositories/search_repo_implmentation.dart';
import 'package:bookly/features/Search/presentation/cubits/search_cubit.dart';
import 'package:bookly/features/Search/presentation/pages/search.dart';
import 'package:bookly/features/home/presentation/pages/book_details.dart';
import 'package:bookly/features/home/presentation/pages/home.dart';
import 'package:bookly/features/settings/presentation/view/settings_view.dart';
import 'package:bookly/features/splash/presentation/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, animation, __) => const Home(),
          transitionDuration: kanimationDuration,
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case AppRoutes.onBoarding:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: kanimationDuration,
          transitionsBuilder: (_, animation, __, child) =>
              FadeTransition(opacity: animation, child: child),
          pageBuilder: (context, animation, __) => const OnBoardingScreen(),
        );
      case AppRoutes.details:
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: kanimationDuration,
          transitionsBuilder: (_, animation, __, child) =>
              FadeTransition(opacity: animation, child: child),
          pageBuilder: (context, animation, __) => const BookDetails(),
        );
      case AppRoutes.search:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (context) =>
                SearchCubit(getIt.get<SearchRepoImplementation>())
                  ..searchBook(),
            child: const SearchView(),
          ),
          settings: settings,
          transitionDuration: kanimationDuration,
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      case AppRoutes.setting:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SettingView(),
          settings: settings,
          transitionDuration: kanimationDuration,
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
    }
  }
}
