import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../const.dart';
import '../refresh_icon_icons.dart';

class ManageConnectChoose extends StatefulWidget {
  const ManageConnectChoose({Key? key}) : super(key: key);

  @override
  State<ManageConnectChoose> createState() => _ManageConnectChooseState();
}

class _ManageConnectChooseState extends State<ManageConnectChoose> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(54, 131, 252, 1),
                      Color.fromRGBO(81, 218, 255, 1),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 20.0,
                      spreadRadius: 1.0,
                    )
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Manage Connections',
                          style: titleTextStyle,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(RefreshIcon.loop_alt),
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: false,
                title: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.chevron_left, color: Colors.white),
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
                bottom: TabBar(
                  indicator: MaterialIndicator(
                    height: 4,
                    color: Colors.white,
                    topLeftRadius: 50,
                    topRightRadius: 50,
                  ),
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w700),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w700),
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'Applications',
                    ),
                    Tab(
                      text: 'Devices',
                    ),
                  ],
                ),
              ),
            ],
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Tab1'),
            ),
            Center(
              child: Text('Tab2'),
            ),
          ],
        ),
      ),
    );
  }
}
// 6dwcsr@gas.asca