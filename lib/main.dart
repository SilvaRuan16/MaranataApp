import 'package:biblia_sagrada/provider/home_provider.dart';
import 'package:biblia_sagrada/provider/settings_provider.dart';
import 'package:biblia_sagrada/provider/theme_provider.dart';
import 'package:biblia_sagrada/core/theme/app_theme.dart';
import 'package:biblia_sagrada/services/system/home_service.dart';
import 'package:biblia_sagrada/services/system/settings_service.dart';
import 'package:biblia_sagrada/views/pages/audio_page.dart';
import 'package:biblia_sagrada/views/pages/biblia_page.dart';
import 'package:biblia_sagrada/views/pages/settings_page.dart';
import 'package:biblia_sagrada/views/pages/devocional_page.dart';
import 'package:biblia_sagrada/views/pages/harpa_page.dart';
import 'package:biblia_sagrada/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    return MultiProvider(
      providers: [
        Provider<HomeService>(create: (_) => HomeService()),
        Provider<SettingsService>(create: (_) => SettingsService()),

        ChangeNotifierProvider<HomeProvider>(
          create: (context) =>
              HomeProvider(context.read<HomeService>())..loadHomeContent(),
        ),

        ChangeNotifierProvider<SettingsProvider>(
          create: (context) =>
              SettingsProvider(context.read<SettingsService>())..loadSettingsContent(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/biblia': (context) => BibliaPage(titulo: "Bíblia",),
          '/harpa': (context) => HarpaPage(titulo: "Harpa",),
          '/devocional': (context) => DevocionalPage(titulo: 'Devocional',),
          '/audio': (context) => AudioPage(titulo: "Áudio",),
          '/config': (context) => SettingsPage(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Bíblia Sagrada',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.themeMode,
      ),
    );
  }
}
