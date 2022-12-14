import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottomnavigationPages/home.dart';
import 'bottomnavigationPages/profile.dart';
import 'bottomnavigationPages/setting.dart';
import 'bottomnavigationPages/trips.dart';

class MainHomePage extends StatefulWidget{
  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int pageIndex =0;
  final pages = [ HomePage(), TipsPage(), ProfilePage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height-status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(width: width, height: height, child: pages[pageIndex],),
      ),
      bottomNavigationBar: Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          height: 60,
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(right: 2, bottom: 5),
                alignment: Alignment.center
                ,decoration: BoxDecoration(
                color: pageIndex==0? Colors.black : const Color(0xffcecece),
                shape: BoxShape.circle,
              )
                ,child: IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },

                icon: pageIndex == 0
                    ? const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.home_filled,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              ),

              Container(
                padding: EdgeInsets.only(right: 2, bottom: 5),
                alignment: Alignment.center
                ,decoration: BoxDecoration(
                color: pageIndex==1? Colors.black : const Color(0xffcecece),
                shape: BoxShape.circle,
              ),
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                      : const Icon(
                    Icons.widgets_rounded,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(right: 2, bottom: 5),
                alignment: Alignment.center
                ,decoration: BoxDecoration(
                color: pageIndex==2? Colors.black : const Color(0xffcecece),
                shape: BoxShape.circle,
              ),
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                      : const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(right: 2, bottom: 5),
                alignment: Alignment.center
                ,decoration: BoxDecoration(
                color: pageIndex==3? Colors.black : const Color(0xffcecece),
                shape: BoxShape.circle,
              ),
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 35,
                  )
                      : const Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    ),
    );
  }
}