import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/bottom_nav_model.dart';
import '../pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  final List<Widget> _widgetOptions = const [
    Center(child: Text('Home')),
    ProfilePage(),
    Center(child: Text('Input')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.r),
          topRight: Radius.circular(18.r),
        ),
        child: BottomAppBar(
          notchMargin: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: navData
                .asMap()
                .entries
                .map((items) => InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = items.key;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 25.w,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 3.h,
                                  color: _currentIndex == items.key
                                      ? Theme.of(context)
                                          .tabBarTheme
                                          .labelColor!
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            items.value.icon,
                            color: _currentIndex == items.key
                                ? Theme.of(context).tabBarTheme.labelColor!
                                : Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .unselectedIconTheme
                                    ?.color,
                            size: Theme.of(context).iconTheme.size?.sp,
                          ),
                          Text(
                            items.value.label,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: _currentIndex == items.key
                                  ? Theme.of(context).tabBarTheme.labelColor
                                  : Theme.of(context)
                                      .bottomNavigationBarTheme
                                      .unselectedLabelStyle
                                      ?.color,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
