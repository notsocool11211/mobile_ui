import 'package:design_ui/constants/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationMyTransport extends StatefulWidget {
  const BottomNavigationMyTransport({Key? key}) : super(key: key);

  @override
  State<BottomNavigationMyTransport> createState() =>
      _BottomNavigationMyTransportState();
}

class _BottomNavigationMyTransportState
    extends State<BottomNavigationMyTransport> {
  int _selectedIndex = 0;

  var bottomTextStyle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5))
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset('assets/svg/home_colored.svg')
                : new SvgPicture.asset('assets/svg/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new SvgPicture.asset('assets/svg/station_colored.svg')
                : new SvgPicture.asset('assets/svg/station.svg'),
            label: 'Stations',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? new SvgPicture.asset('assets/svg/parking_colored.svg')
                : new SvgPicture.asset('assets/svg/parking.svg'),
            label: 'Parking',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? new SvgPicture.asset('assets/svg/cycling_colored.svg')
                : new SvgPicture.asset('assets/svg/cycling.svg'),
            label: 'Cycling',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: bottomTextStyle,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
