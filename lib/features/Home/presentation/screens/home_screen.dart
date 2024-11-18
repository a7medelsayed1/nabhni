import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/models/navitem.dart';
import 'package:nabhni/features/Home/presentation/screens/home_content.dart';
import 'package:nabhni/features/Home/presentation/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    HomeContent(),
    Container(),
    Container(
    ),
    Container(
    ),
  ];

  List<Navitem> navitem = [
    Navitem(label: "الرئيسيه", icon: Icon(FontAwesomeIcons.house)),
    Navitem(label: "المتجر", icon: Icon(FontAwesomeIcons.bagShopping)),
    Navitem(label: "الدعم", icon: Icon(FontAwesomeIcons.solidMessage)),
    Navitem(label: "الاعدادات", icon: Icon(FontAwesomeIcons.gear)),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      bottomNavigationBar: _buildBottomNav(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[_index],
      ),
    );
  }

  BottomNavigationBar _buildBottomNav(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: Textutils.navlabel,
      showSelectedLabels: false,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
        unselectedItemColor: Mycolors.navunselected,
        selectedItemColor: Mycolors.mybuttoncolor,
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
                        color: Mycolors.mybuttoncolor,
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
