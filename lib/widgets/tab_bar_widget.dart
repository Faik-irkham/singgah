import 'package:flutter/material.dart';
import 'package:singgah/shared/theme.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      indicator: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(12),
      ),
      labelStyle: blackTextStyle.copyWith(
        fontWeight: bold,
      ),
      tabs: const [
        Tab(
          text: 'Hotel',
        ),
        Tab(
          text: 'Homestay',
        ),
        Tab(
          text: 'Apart',
        ),
        Tab(
          text: 'Rent House',
        ),
      ],
    );
  }
}
