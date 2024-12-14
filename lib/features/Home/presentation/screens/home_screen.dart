import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/models/navitem.dart';
import 'package:nabhni/features/Home/presentation/screens/callcenter_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/home_content.dart';
import 'package:nabhni/features/settings/presentation/screens/settings_screen.dart';
import 'package:nabhni/features/store/presentation/screens/store_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
   const HomeContent(),
    const StoreScreen(),
   const CallcenterScreen(
    ),
   const SettingsScreen(
    ),
  ];

  List<Navitem> navitem = [
    Navitem(label: "الرئيسيه", icon:const Icon(FontAwesomeIcons.house)),
    Navitem(label: "المتجر", icon:const Icon(FontAwesomeIcons.bagShopping)),
    Navitem(label: "الدعم", icon:const Icon(FontAwesomeIcons.solidMessage)),
    Navitem(label: "الاعدادات", icon:const Icon(FontAwesomeIcons.gear)),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: CustomAppbar(),
      bottomNavigationBar: _buildBottomNav(context),
      body: pages[_index],
    );
  }

  BottomNavigationBar _buildBottomNav(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: Textutils.navlabel,
      showSelectedLabels: false,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
        unselectedItemColor: Mycolors.boldgrey,
        selectedItemColor: Mycolors.primarycolor,
        backgroundColor: Mycolors.lightcyan,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: navitem
            .map((e) => BottomNavigationBarItem(
                  
                  icon: e.icon,
                  label: e.label,
                  activeIcon: Column(
                   children: [
                     e.icon,
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: R.sW(context, 8)),
                      decoration: BoxDecoration(
                        color: Mycolors.primarycolor,
                        borderRadius: BorderRadius.circular(R.sR(context,8))
                      ),
                      margin: EdgeInsets.only(top: R.sH(context, 8)),
                      child: Text(e.label,style: Textutils.navlabel ,),
                     )
                   ]
                  )
                ))
            .toList());
  }
}
