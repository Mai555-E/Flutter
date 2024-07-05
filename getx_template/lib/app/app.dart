import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/presentation/resources/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import '../presentation/resources/app_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../presentation/resources/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: RouteGenerator.getRoute(),
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        supportedLocales: const [Locale("en"), Locale("ar")],
        localizationsDelegates: [
          AppLocalization.delegats,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (localeDevice, supportedLocales) {
          for (var locale in supportedLocales) {
            if (localeDevice != null && localeDevice.languageCode == locale.languageCode) {
              return localeDevice;
            }
          }

          return supportedLocales.first;
        });
  }
}
