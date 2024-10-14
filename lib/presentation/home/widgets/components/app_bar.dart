part of '../../pages/profile_page.dart';

AppBar _buildAppBar(BuildContext context, TabController tabController) =>
    AppBar(
      elevation: 0,
      centerTitle: false,
      leadingWidth: 0,
      title: Text(
        'Portfolio',
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inter',
        ),
      ),
      actionsIconTheme: IconThemeData(
        color: Theme.of(context).iconTheme.color,
        size: Theme.of(context).iconTheme.size?.sp,
      ),
      actions: [
        Icon(Icons.shopping_bag,
            color: Theme.of(context).tabBarTheme.labelColor, size: 24.sp),
        SizedBox(width: 18.w),
        Icon(Icons.notifications,
            color: Theme.of(context).tabBarTheme.labelColor, size: 24.sp),
        SizedBox(width: 18.w),
      ],
      bottom: TabBar(
        controller: tabController,
        tabAlignment: TabAlignment.center,
        tabs: tabData
            .map((tab) => Tab(
                  text: tab.title,
                ))
            .toList(),
        labelStyle: TextStyle(fontSize: 14.sp, fontFamily: 'Inter'),
        unselectedLabelStyle: TextStyle(fontSize: 14.sp, fontFamily: 'Inter'),
      ),
    );
