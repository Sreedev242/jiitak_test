import 'package:flutter/material.dart';
import 'package:jiitak_test/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final baseWidth = 380;
    final widthText = MediaQuery.of(context).size.width / baseWidth;

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 245),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(20.0)),
                        color: Color.fromARGB(255, 255, 250, 250)),
                    width: width * 1 / 1.5,
                    height: widthText * 34,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8),
                      child: Text(
                        '北海道, 札幌市',
                        style: TextStyle(
                            fontSize: widthText * 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: widthText * 33,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
                    style: TextStyle(
                        fontSize: widthText * 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    '2022年 5月 26日（木）'),
                width: double.infinity,
                height: width * 1 / 13,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1.061, 1),
                    end: Alignment(1.408, -1),
                    colors: <Color>[Color(0xfffaaa14), Color(0xffffd78d)],
                    stops: <double>[0, 0.521],
                  ),
                )),
            SizedBox(
              height: height * 1 / 33,
            ),
            // Text('dd')
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  calenderWidget(
                      textcolor: Colors.white,
                      width: width,
                      day: '木',
                      backdrop: Color(0xfffaaa14),
                      date: 26),
                  SizedBox(
                    width: width * 1 / 555,
                  ),
                  calenderWidget(
                      textcolor: Colors.black,
                      width: width,
                      day: '金',
                      backdrop: Color.fromARGB(255, 248, 245, 245),
                      date: 27),
                  SizedBox(
                    width: width * 1 / 555,
                  ),
                  calenderWidget(
                      textcolor: Colors.black,
                      width: width,
                      day: '土',
                      backdrop: Color.fromARGB(255, 248, 245, 245),
                      date: 28),
                  SizedBox(
                    width: width * 1 / 555,
                  ),
                  calenderWidget(
                      textcolor: Colors.black,
                      width: width,
                      day: '日',
                      backdrop: Color.fromARGB(255, 248, 245, 245),
                      date: 29),
                  SizedBox(
                    width: width * 1 / 555,
                  ),
                  calenderWidget(
                      textcolor: Colors.black,
                      width: width,
                      day: '月',
                      backdrop: Color.fromARGB(255, 248, 245, 245),
                      date: 30),
                  SizedBox(
                    width: width * 1 / 555,
                  ),
                  calenderWidget(
                      textcolor: Colors.black,
                      width: width,
                      day: '火',
                      backdrop: Color.fromARGB(255, 248, 245, 245),
                      date: 31),
                  SizedBox(
                    width: width * 1 / 555,
                  ),
                  calenderWidget(
                      textcolor: Colors.black,
                      width: width,
                      day: '水',
                      backdrop: Color.fromARGB(255, 248, 245, 245),
                      date: 1)
                ],
              ),
            ),
            SizedBox(
              height: height * 1 / 44,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15,right: 30, left: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            height: height * .7,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(data.auther??'Auther name'),
                            
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12)),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'images/homeimage.png'))),
                                    height: height * .35,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト",
                                      style: TextStyle(
                                          fontSize: widthText * 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 1 / 95,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "介護付き有料老人ホーム",
                                        style: TextStyle(
                                            fontSize: widthText * 13,
                                            color: Color(0xfffaaa14)),
                                      )),
                                      color: Color(0x19eeab40),
                                      width: width * 1 / 3,
                                      height: height * 1 / 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 1 / 95,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '5月 31日（水）08 : 00 ~ 17 : 00',
                                      style: TextStyle(
                                          fontSize: widthText * 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),SizedBox(
                                    height: height * 1 / 100,
                                  ),Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                        '北海道札幌市東雲町3丁目916番地17号',
                                        style: TextStyle(
                                            fontSize: widthText * 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                  ),
                                  SizedBox(
                                    height: height * 1 / 100,
                                  ),Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                        '住宅型有料老人ホームひまわり倶楽部',
                                        style: TextStyle(color: Colors.grey,
                                            fontSize: widthText * 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),Positioned(top: height*1/2,
                                  right: width*1/8,
                                  child: Text('¥ 6,000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: widthText*17),)),
                        Positioned(top: height*1/1.75,
                                  right: width*1/8,
                                  child: Icon(Icons.favorite_border))
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: height * 1 / 22,
                    );
                  },
                  itemCount: 2),
            )
          ],
        ),
      ),
    );
  }
}
