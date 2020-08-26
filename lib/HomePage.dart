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
                      color: primaryColor,
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
            Container(
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 2,
                  top: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tapBarmenu(icon: iconHomeDark, colorC: primaryColor),
                    tapBarmenu(icon: iconVideo),
                    tapBarmenu(icon: iconAccount),
                    tapBarmenu(icon: iconNotification),
                    tapBarmenu(icon: iconMenu),
                  ],
                ),
              ),
            ),
            //./assets/images/profile_01.jpg
            SingleChildScrollView(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: greyLight,
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.asset(
                          "./assets/images/profile_01.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("data"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  IconButton tapBarmenu({String icon, Color colorC}) {
    return IconButton(
        icon: SvgPicture.asset(
          icon,
          color: colorC,
          width: 24,
        ),
        onPressed: () {});
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
