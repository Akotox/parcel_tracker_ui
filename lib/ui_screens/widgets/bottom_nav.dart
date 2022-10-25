import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({Key? key}) : super(key: key);

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _selectedIndex = 0;
  // int currentIndex = pageIndex;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: [
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? SvgPicture.asset(
                  'assets/icons/my_parcel_black.svg',
                  height: 25,
                  width: 25,
                )
              : SvgPicture.asset(
                  'assets/icons/my_parcel.svg',
                  height: 25,
                  width: 25,
                ),
          label: 'My Parcels',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? SvgPicture.asset(
                  'assets/icons/send_package_black.svg',
                  height: 25,
                  width: 25,
                )
              : SvgPicture.asset(
                  'assets/icons/send_package.svg',
                  height: 25,
                  width: 25,
                ),
          label: 'Send Parcel',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? SvgPicture.asset(
                  'assets/icons/center_black.svg',
                  height: 25,
                  width: 25,
                )
              : SvgPicture.asset(
                  'assets/icons/center.svg',
                  height: 25,
                  width: 25,
                ),
          label: 'Parcel Center',
        ),
      ],
      // currentIndex: pageIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: _onItemSelected,
    );
  }
}
