import 'package:flutter/material.dart';
import '/presentation/home/pages/home_page.dart';
import 'core/config/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldbgColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.scaffoldbgColor,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.seedColor),
          useMaterial3: true,
          bottomAppBarTheme: BottomAppBarTheme(
            elevation: 2,
            color: Colors.grey.shade100.withOpacity(0.5),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              unselectedIconTheme:
                  IconThemeData(color: AppColors.unSelectedBNColor),
              unselectedLabelStyle:
                  TextStyle(color: AppColors.unSelectedBNColor)),
          iconTheme: const IconThemeData(size: 27),
          tabBarTheme: TabBarTheme(
              dividerColor: AppColors.tabDividerColor,
              dividerHeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: AppColors.primaryColor),
              ),
              labelColor: AppColors.primaryColor,
              labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              unselectedLabelColor: AppColors.unSelectedLabelColor,
              unselectedLabelStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.unSelectedLabelColor))),
      home: const HomePage(),
    );
  }
}
