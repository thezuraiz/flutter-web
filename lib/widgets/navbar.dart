import 'package:flutter/material.dart';
import 'package:flutterweb/utils/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavbar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Iconsax.menu), Icon(Iconsax.logout)],
      ),
    );
  }

  Widget DesktopNavbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Iconsax.menu),
          Row(
            children: [
              NavButton("Features"),
              NavButton("About Us"),
              NavButton("Pricing"),
              NavButton("Feedback"),
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Request Demo"),
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primary),
                foregroundColor: AppColors.primary),
          ),
        ],
      ),
    );
  }

  Widget NavButton(String s) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          s,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
