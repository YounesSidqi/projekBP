import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app_flutter/component/tab_item.dart';
import 'package:quran_app_flutter/pages/tabs/dzikr.dart';
import 'package:quran_app_flutter/pages/tabs/doa.dart';
import 'package:quran_app_flutter/pages/tabs/surah_tab.dart';
import 'package:quran_app_flutter/theme.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }
}

AppBar _appBar() => AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/svg/menu_icon.svg'),
      ),
      title: Text(
        'RumahNgaji',
        style: GoogleFonts.poppins(
            fontSize: 18, fontWeight: FontWeight.w600, color: primary),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svg/search_icon.svg'))
      ],
    );

BottomNavigationBarItem _bottomNavigationBarItem(
        {required String icon, required String label}) =>
    BottomNavigationBarItem(
        // ignore: deprecated_member_use
        icon: SvgPicture.asset(icon, color: secondary),
        activeIcon: SvgPicture.asset(
          icon,
          // ignore: deprecated_member_use
          color: primary,
        ),
        label: label);

DefaultTabController _body() => DefaultTabController(
    length: 3,
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: _salam(),
            ),
            SliverAppBar(
              pinned: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              shape: Border(
                  bottom: BorderSide(
                      width: 3, color: Colors.grey.withOpacity(0.1))),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: TabBar(
                    labelColor: primary,
                    indicatorColor: primary,
                    indicatorWeight: 3,
                    tabs: [
                      itemTab(label: "Surah"),
                      itemTab(label: "Dzikr"),
                      itemTab(label: "Doa"),
                    ],
                  )),
            )
          ],
          body: const TabBarView(children: [TabSurah(), TabDzikr(), TabDoa()]),
        )));

Column _salam() => Column(
      children: [
        Text(
          "Assalamualaikum",
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w600, color: secondary),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Yenes',
          style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            Container(
              height: 131,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 7, 235, 235),
                        Color.fromARGB(255, 6, 151, 203)
                      ])),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset('assets/svg/quran_banner.svg')),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/book.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Last Read",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Al-Fatihah",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Text(
                    "Ayah No : 1",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
