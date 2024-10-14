import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import '/presentation/home/pages/home_page.dart';
import 'core/config/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
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
                  TextStyle(color: AppColors.unSelectedBNColor),
            ),
            iconTheme: IconThemeData(size: 27.sp),
            tabBarTheme: TabBarTheme(
              dividerColor: AppColors.tabDividerColor,
              dividerHeight: 3.h,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: AppColors.primaryColor),
              ),
              labelColor: AppColors.primaryColor,
              labelStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
              ),
              unselectedLabelColor: AppColors.unSelectedLabelColor,
              unselectedLabelStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.unSelectedLabelColor,
                fontFamily: 'Inter',
              ),
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
