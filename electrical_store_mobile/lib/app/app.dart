import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../ui/home/home_screen.dart';
import '../ui/resources/app_localization.dart';
import '../ui/resources/data_theme_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        useInheritedMediaQuery: true,
        locale: Locale(readLocale()),
        
        builder: DevicePreview.appBuilder,
        title: "Store app",
        theme: ThemeDataStyle.lightTheme,
        themeMode: ThemeDataStyle.currentMode,
        darkTheme: ThemeDataStyle.darkTheme,
        debugShowCheckedModeBanner: false,
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
        },
        home: const HomeScreen(),
      ),
    );
  }
}
