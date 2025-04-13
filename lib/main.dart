import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:nekita_app/main/homepage.dart';
import 'package:nekita_app/theme/theme_config.dart';

import 'drawer/neki_drawer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('vi')],
      path: 'assets/lang',
      assetLoader: const HotReloadAssetLoader(),
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _updateTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neki',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: _themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        appBar: AppBar(title: const Text('Neki')),
        drawer: NekiDrawer(
          currentThemeMode: _themeMode,
          onThemeChanged: _updateTheme,
        ),
        body: Center(child: Text('Homepage').tr()),
      ),
    );
  }
}

class HotReloadAssetLoader extends AssetLoader {
  const HotReloadAssetLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    final data = await rootBundle.loadString('$path/${locale.languageCode}.json');
    return json.decode(data);
  }
}


