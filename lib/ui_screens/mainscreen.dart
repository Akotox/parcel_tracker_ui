import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xpress/ui_screens/home.dart';
import 'package:xpress/ui_screens/parcel_center.dart';
import 'package:xpress/ui_screens/send_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    const HomePage(),
    const ParcelScreen(),
    const ParcelCenter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageList[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: Theme.of(context).textTheme.headline5,
            unselectedLabelStyle: Theme.of(context).textTheme.headline5,
            items: [
              BottomNavigationBarItem(
                icon: pageIndex == 0
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
                icon: pageIndex == 1
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
                icon: pageIndex == 2
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
            currentIndex: pageIndex,
            unselectedItemColor: Theme.of(context).unselectedWidgetColor,
            selectedItemColor: Colors.black,
            onTap: ((value) {
              setState(() {
                setState(() {
                  pageIndex = value;
                });
              });
            })));
  }
}
