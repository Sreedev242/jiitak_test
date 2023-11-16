import 'package:flutter/material.dart';
import 'package:jiitak_test/widgets/ListTileWidget.dart.dart';

class StampDetails extends StatelessWidget {
  const StampDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    final baseWidth = 380;
    final widthText = MediaQuery.of(context).size.width / baseWidth;

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(width * 1 / 3.2),
        child: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.remove_circle_outline,
                  color: Colors.white, size: widthText * 26),
            ),
          ],
          flexibleSpace: Container(
            // Using Container to hold the content of flexibleSpace
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'スタンプカード詳細',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: widthText * 15),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      1 /
                                      22,
                                  top: MediaQuery.of(context).size.width / 10),
                              child: Text(
                                'Mer キッチン',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: widthText * 15),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        1 /
                                        22,
                                    top:
                                        MediaQuery.of(context).size.width / 10),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '現在の獲得数 ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      TextSpan(
                                          text: '30',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: widthText * 34,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '個',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: widthText * 15,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromARGB(255, 149, 184, 255),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 1 / 22,
                    top: MediaQuery.of(context).size.width / 10),
                child: Text(
                  'スタンプ獲得履歴',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: widthText * 20),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 1 / 22),
                  child: SingleChildScrollView(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        listTileWidget(
                            trailingSize: widthText * 25,
                            subtitleSize: widthText * 20,
                            titleSize: widthText * 19,
                            title: '2021 / 11 / 18',
                            subtitle: 'スタンプを獲得しました。'),
                        Divider(
                          height: width * 1 / 11,
                        ),
                        listTileWidget(
                            trailingSize: widthText * 25,
                            subtitleSize: widthText * 20,
                            titleSize: widthText * 19,
                            title: "2021 / 11 / 17",
                            subtitle: "スタンプを獲得しました。"),
                        Divider(
                          height: width * 1 / 11,
                        ),
                        listTileWidget(
                            trailingSize: widthText * 25,
                            subtitleSize: widthText * 20,
                            titleSize: widthText * 19,
                            title: "2021 / 11 / 16",
                            subtitle: "スタンプを獲得しました。"),
                             Divider(
                          height: width * 1 / 11,
                        ), listTileWidget(
                            trailingSize: widthText * 25,
                            subtitleSize: widthText * 20,
                            titleSize: widthText * 19,
                            title: "2021 / 11 / 13",
                            subtitle: "スタンプを獲得しました。"),
                             Divider(
                          height: width * 1 / 11,
                        ),listTileWidget(
                            trailingSize: widthText * 25,
                            subtitleSize: widthText * 20,
                            titleSize: widthText * 19,
                            title: "2021 / 11 / 12",
                            subtitle: "スタンプを獲得しました。"),
                             Divider(
                          height: width * 1 / 11,
                        ),
                      ],
                    ),
                  ))
            ]),
      ),
    );
  }
}
