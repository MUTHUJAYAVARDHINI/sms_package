
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_package/src/features/Login/bloc/login_bloc.dart';
import 'package:sms_package/src/helper/router_helper.dart';
import 'package:sms_package/src/injector/injector.dart';
import '../../../core/theme/app_thems.dart';
import '../bloc/app_bloc.dart';


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppBloc _appBloc;

  @override
  void initState() {
    _appBloc = Injector.instance<AppBloc>()
      ..add(
        const AppEvent.loaded(),
      );
    super.initState();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider<AppBloc>.value(
  //     value: _appBloc,
  //     child: BlocSelector<AppBloc, AppState, UIStatus>(
  //       bloc: _appBloc,
  //       selector: (state) => state.status,
  //       builder: (context, appStatus) {
  //         return appStatus.when(
  //           initial: () => const SizedBox(),
  //           loading: () => const SizedBox(),
  //           loadFailed: (_) => const SizedBox(),
  //           loadSuccess: (_) => const _App(),
  //         );
  //       },
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>.value(value: _appBloc),
        BlocProvider<LoginBloc>.value(value: Injector.instance<LoginBloc>(),),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return state.status.when(
            initial: () => const SizedBox(),
            loading: () => const SizedBox(),
            loadFailed: (_) => const SizedBox(),
            loadSuccess: (_) => const _App(),
          );
        },
      ),
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    // final String locale = context.select(
    //   (AppBloc value) => value.state.locale,
    // );

    final bool isDarkMode = context.select(
      (AppBloc value) => value.state.isDarkMode,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: RouteHelper.router,
    );
  }
}
