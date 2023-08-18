import 'package:chatscreen/Widgets/CallsWidget.dart';
import 'package:chatscreen/Widgets/StatusWidget.dart';
import 'package:flutter/material.dart';

import '../Widgets/ChatsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  //if someone clicks on value 5 means clicks on settings
                  if (selected == 5) {
                    Navigator.pushNamed(context, "settingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked Devices",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Starred Messages",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  //tab 1
                  Container(
                    width: 24,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  //tab 2
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("CHATS"),
                          SizedBox(
                            width: 8,
                            //padding: EdgeInsets.all(10),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "10",
                              style: TextStyle(
                                  color: Color(0xFF075E55), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //tab 3
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("STATUS"),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  //tab 1 Camera
                  Container(color: Colors.black),
                  //tab 2
                  ChatsWidget(),
                  //tab 3 Statuswidget
                  StatusWidget(),
                  //tab 4 CallsWidget
                  CallsWidget(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF075E55),
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
