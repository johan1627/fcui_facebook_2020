import 'package:fcui_facebook_2020/misc/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyDark,
        body: Column(
          children: [
            Container(
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      logoFacebook,
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                    Row(
                      children: [
                        iconTop(
                            iconCus: iconSearch,
                            functionCus: () {
                              print("iconSearch");
                            }),
                        SizedBox(width: 10.0),
                        iconTop(
                            iconCus: iconMessenger,
                            functionCus: () {
                              print("iconMessenger");
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            )
          ],
        ),
      ),
    );
  }

  InkWell iconTop({String iconCus, Function functionCus}) {
    return InkWell(
      onTap: functionCus,
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          color: greyLight,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SvgPicture.asset(
            iconCus,
            width: 20.0,
          ),
        ),
      ),
    );
  }
}
