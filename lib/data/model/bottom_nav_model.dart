import 'package:flutter/material.dart';

List<CustomBottomBarItems> navData = [
  CustomBottomBarItems(label: "Home", icon: Icons.home_filled),
  CustomBottomBarItems(label: "Portfolio", icon: Icons.business_center_sharp),
  CustomBottomBarItems(label: "Input", icon: Icons.article),
  CustomBottomBarItems(label: "Profile", icon: Icons.person),
];

class CustomBottomBarItems {

  final IconData icon;

  final String label;

  CustomBottomBarItems({
    required this.icon,
    required this.label,
  });
}
