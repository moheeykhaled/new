import 'package:bookly/config/router/router.dart';
import 'package:bookly/config/theme/theme.dart';
import 'package:bookly/core/service_locator/locator.dart';
import 'package:bookly/features/settings/manager/appsetting_cubit.dart';
import 'package:bookly/observer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final EasyLocalization easyLocalization = EasyLocalization(
    supportedLocales: const [Locale("en", "US"), Locale("ar", "EG")],
    path: "lib/config/resources",
    saveLocale: true,
    useOnlyLangCode: true,
    fallbackLocale: const Locale("en", "US"),
    startLocale: const Locale("en", "US"),
    child: const Bookly(),
  );

  final AppsettingCubit bloc = AppsettingCubit();
  Bloc.observer = MyBlocObserver();
  setUpLocator();
  runApp(
    BlocProvider(
      create: (context) => bloc,
      child: easyLocalization,
    ),
  );
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocBuilder<AppsettingCubit, AppsettingState>(
          builder: (context, state) {
            AppsettingCubit bloc = BlocProvider.of<AppsettingCubit>(context);
            return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              themeMode: bloc.appTheme,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              onGenerateRoute: AppRouter.onGenerateRoutes,
            );
          },
        );
      },
    );
  }
}
